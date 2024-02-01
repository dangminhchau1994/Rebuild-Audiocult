import 'package:app/core/extension/app_extension.dart';
import 'package:app/core/utils/validation_util.dart';
import 'package:app/data/models/select_model.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/blocs/get_places/get_places_bloc.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_bloc.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_state.dart';
import 'package:app/presentation/blocs/register/register_cubit.dart';
import 'package:app/presentation/blocs/register/register_cubit_state.dart';
import 'package:app/presentation/features/auth/register/widgets/register_search.dart';
import 'package:app/presentation/features/auth/register/widgets/resigter_term.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_checkbox.dart';
import 'package:app/presentation/widgets/ui_dropdown.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: context.setWidth(10),
        vertical: context.setHeight(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<GetRolesBloc, GetRolesState>(
              builder: (context, state) {
                if (state is GetRolesLoaded) {
                  return UIDropDown(
                    errorMessage: LocaleKeys.auth_role_required.tr(),
                    items: state.data.data
                        ?.map((e) => SelectModel(
                              title: e.title,
                              id: e.userGroupId,
                            ))
                        .toList(),
                    title: LocaleKeys.auth_choose_your_role.tr(),
                    onChanged: (value) {},
                  );
                } else {
                  return Container();
                }
              },
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_full_name.tr(),
              onChanged: (value) {},
              onValidator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_user_name.tr(),
              onChanged: (value) {},
              onValidator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            context.verticalSpaceSmall,
            BlocBuilder<RegisterCubit, RegisterCubitState>(
              builder: (context, state) {
                return UITextField(
                  controller: TextEditingController(text: state.fullAddress)
                    ..selection = const TextSelection.collapsed(offset: 0),
                  hintText: LocaleKeys.auth_location.tr(),
                  onValidator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  onChanged: (value) {},
                  onTap: () async {
                    final result = await showSearch(
                      context: context,
                      delegate: RegisterSearch(
                        bloc: context.read<GetPlacesBloc>(),
                      ),
                    );
                    if (!mounted) return;
                    if (result != null) {
                      context
                          .read<RegisterCubit>()
                          .updateFullAddress(result.description);
                    }
                  },
                );
              },
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_email.tr(),
              onChanged: (value) {},
              onValidator: (value) {
                if (value?.isEmpty ?? false) {
                  return LocaleKeys.auth_empty_input.tr();
                } else if (!ValidationUtil.isValidEmail(value ?? '')) {
                  return LocaleKeys.auth_email_invalid.tr();
                }
                return null;
              },
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_password.tr(),
              isObscureText: true,
              onChanged: (value) {},
              onValidator: (value) {
                if (value?.isEmpty ?? false) {
                  return LocaleKeys.auth_empty_input.tr();
                } else if (!ValidationUtil.isValidPassword(value ?? '')) {
                  return LocaleKeys.auth_password_invalid.tr();
                }
                return null;
              },
            ),
            context.verticalSpaceSmall,
            UICheckBox(
              title: LocaleKeys.auth_checked_term.tr(),
              onChanged: (value) {},
            ),
            context.verticalSpaceMedium,
            const RegisterTerm(),
            context.verticalSpaceMedium,
            UIButton(
              title: LocaleKeys.auth_sign_up.tr(),
              onPressed: () {
                if (_formKey.currentState?.saveAndValidate() ?? false) {}
              },
            ),
            context.verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}

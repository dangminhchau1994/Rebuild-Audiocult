import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/blocs/create_new_password/create_new_password_cubit.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class ResendNewPasswordBody extends StatelessWidget {
  const ResendNewPasswordBody({
    super.key,
    this.code,
  });

  final String? code;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    final cubit = context.read<CreateNewPasswordCubit>();

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: context.setWidth(20),
        vertical: context.setHeight(20),
      ),
      child: FormBuilder(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.auth_create_new_password.tr(),
              style: context.titleSmall.copyWith(
                color: ColorName.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            context.verticalSpaceSmall,
            Text(
              LocaleKeys.auth_create_new_password_content.tr(),
              style: context.bodySmall.copyWith(
                color: ColorName.mediumTextColor,
              ),
            ),
            context.verticalSpaceMedium,
            UITextField(
              hintText: LocaleKeys.auth_new_password.tr(),
              onChanged: (value) => cubit.newPasswordChanged(value ?? ''),
              onValidator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_confirm_password.tr(),
              onChanged: (value) => cubit.confirmPasswordChanged(value ?? ''),
              onValidator: (value) {
                if (value?.isEmpty ?? true) {
                  return LocaleKeys.auth_empty_input.tr();
                } else if (value != cubit.state.newPassword) {
                  return LocaleKeys.auth_not_matching_password.tr();
                }
                return null;
              },
            ),
            context.verticalSpaceMedium,
            UIButton(
              title: LocaleKeys.save.tr(),
              onPressed: () {
                if (formKey.currentState?.saveAndValidate() ?? false) {}
              },
            )
          ],
        ),
      ),
    );
  }
}

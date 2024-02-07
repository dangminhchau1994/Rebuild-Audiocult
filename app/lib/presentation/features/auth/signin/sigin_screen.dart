import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/constants/app_route_names.dart';
import 'package:app/core/extension/app_extension.dart';
import 'package:app/core/utils/share_preferences_util.dart';
import 'package:app/di/inject_container.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/blocs/login/login_bloc.dart';
import 'package:app/presentation/blocs/login/login_cubit.dart';
import 'package:app/presentation/blocs/login/login_event.dart';
import 'package:app/presentation/blocs/login/login_state.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_checkbox.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    final signInCubit = context.read<LoginCubit>();

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: context.setWidth(10),
        vertical: context.setHeight(20),
      ),
      child: SingleChildScrollView(
        child: FormBuilder(
          key: formKey,
          child: Column(
            children: [
              UITextField(
                controller: TextEditingController(
                  text: getIt<SharePreferencesUtil>()
                      .getString(AppConstants.username),
                ),
                hintText: LocaleKeys.auth_full_name.tr(),
                onChanged: (value) =>
                    signInCubit.onFullNameChanged(value ?? ''),
                onValidator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              context.verticalSpaceSmall,
              UITextField(
                controller: TextEditingController(
                  text: getIt<SharePreferencesUtil>()
                      .getString(AppConstants.password),
                ),
                hintText: LocaleKeys.auth_password.tr(),
                isObscureText: true,
                onChanged: (value) =>
                    signInCubit.onPasswordChanged(value ?? ''),
                onValidator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              context.verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: UICheckBox(
                      title: LocaleKeys.auth_remember_me.tr(),
                      onChanged: (value) async {
                        if (value) {
                          getIt<SharePreferencesUtil>().saveString(
                            AppConstants.username,
                            signInCubit.state.fullName ?? '',
                          );
                          getIt<SharePreferencesUtil>().saveString(
                            AppConstants.password,
                            signInCubit.state.password ?? '',
                          );
                        } else {
                          getIt<SharePreferencesUtil>().removeString(
                            AppConstants.username,
                          );
                          getIt<SharePreferencesUtil>().removeString(
                            AppConstants.password,
                          );
                        }
                      },
                    ),
                  ),
                  Flexible(
                    child: InkWell(
                      onTap: () {
                        context.router.pushNamed(AppRouteNames.resendPassword);
                      },
                      child: Text(
                        LocaleKeys.auth_forgot_password.tr(),
                        style: context.bodySmall.copyWith(
                          color: ColorName.lightBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              context.verticalSpaceMedium,
              BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is LoginLoading) {
                    EasyLoading.show();
                  } else if (state is LoginSuccess) {
                    EasyLoading.dismiss();
                  } else if (state is LoginError) {
                    EasyLoading.dismiss();
                    context.showError(
                      LocaleKeys.auth_invalid_username_password.tr(),
                    );
                  }
                },
                builder: (context, state) {
                  return UIButton(
                    title: LocaleKeys.auth_sign_in.tr(),
                    onPressed: () {
                      if (formKey.currentState?.saveAndValidate() ?? false) {
                        context.read<LoginBloc>().add(
                              LoginEvent(
                                params: LoginParams(
                                  clientId: AppConstants.clientId,
                                  clientSecret: AppConstants.clientSecret,
                                  grantType: AppConstants.loginGrantType,
                                  username: getIt<SharePreferencesUtil>()
                                          .getString(AppConstants.username)
                                          .isEmpty
                                      ? signInCubit.state.fullName
                                      : getIt<SharePreferencesUtil>()
                                          .getString(AppConstants.username),
                                  password: getIt<SharePreferencesUtil>()
                                          .getString(AppConstants.password)
                                          .isEmpty
                                      ? signInCubit.state.password
                                      : getIt<SharePreferencesUtil>()
                                          .getString(AppConstants.password),
                                ),
                              ),
                            );
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

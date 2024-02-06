import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/extension/app_extension.dart';
import 'package:app/core/utils/share_preferences_util.dart';
import 'package:app/core/utils/validation_util.dart';
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
                    text: SharePreferencesUtil()
                        .getString(AppConstants.username)),
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
                    text: SharePreferencesUtil()
                        .getString(AppConstants.password)),
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
                      onChanged: (value) {
                        if (value) {
                          SharePreferencesUtil().saveString(
                            AppConstants.username,
                            signInCubit.state.fullName ?? '',
                          );
                          SharePreferencesUtil().saveString(
                            AppConstants.password,
                            signInCubit.state.password ?? '',
                          );
                        } else {
                          SharePreferencesUtil().removeString(
                            AppConstants.username,
                          );
                          SharePreferencesUtil().removeString(
                            AppConstants.password,
                          );
                        }
                      },
                    ),
                  ),
                  Flexible(
                    child: Text(
                      LocaleKeys.auth_forgot_password.tr(),
                      style: context.bodySmall.copyWith(
                        color: ColorName.lightBlue,
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
                    context.showSuccess('Login Success');
                  } else if (state is LoginError) {
                    EasyLoading.dismiss();
                    context.showError('Login Failed');
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
                                  username: signInCubit.state.fullName,
                                  password: signInCubit.state.password,
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

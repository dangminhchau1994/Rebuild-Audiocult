import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/constants/app_route_names.dart';
import 'package:app/core/extension/app_extension.dart';
import 'package:app/core/utils/validation_util.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_bloc.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_cubit.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_event.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_state.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ResendPasswordBody extends StatelessWidget {
  const ResendPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    final resendPasswordCubit = context.read<ResendPasswordCubit>();

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
              LocaleKeys.auth_resend_password.tr(),
              style: context.titleSmall.copyWith(
                  color: ColorName.white, fontWeight: FontWeight.bold),
            ),
            context.verticalSpaceSmall,
            Text(
              LocaleKeys.auth_resend_password_email_associated.tr(),
              style: context.bodySmall.copyWith(color: ColorName.white),
            ),
            context.verticalSpaceMedium,
            UITextField(
              hintText: LocaleKeys.auth_email.tr(),
              onChanged: (value) =>
                  resendPasswordCubit.onSetEmailChanged(value ?? ''),
              onValidator: (value) {
                if (value?.isEmpty ?? false) {
                  return LocaleKeys.auth_empty_input.tr();
                } else if (!ValidationUtil.isValidEmail(value ?? '')) {
                  return LocaleKeys.auth_email_invalid.tr();
                }
                return null;
              },
            ),
            context.verticalSpaceMedium,
            BlocConsumer<ResendPasswordBloc, ResendPasswordState>(
              listener: (context, state) {
                if (state is ResendPasswordLoading) {
                  EasyLoading.show();
                } else if (state is ResendPasswordSuccess) {
                  EasyLoading.dismiss();
                  context.router.pushNamed(AppRouteNames.resendCode);
                } else if (state is ResendPasswordFailure) {
                  EasyLoading.dismiss();
                  context.showError('Resend password failed please try again.');
                }
              },
              builder: (context, state) {
                return UIButton(
                  title: LocaleKeys.submit.tr(),
                  onPressed: () {
                    if (formKey.currentState?.saveAndValidate() ?? false) {
                      context.read<ResendPasswordBloc>().add(
                            OnResendPasswordCredentials(
                              params: LoginParams(
                                username: resendPasswordCubit.state.email,
                                clientId: AppConstants.clientId,
                                clientSecret: AppConstants.clientSecret,
                                grantType: AppConstants.roleGranType,
                              ),
                            ),
                          );
                    }
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

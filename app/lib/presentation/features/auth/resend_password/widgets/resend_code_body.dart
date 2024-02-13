import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/extension/app_extension.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_bloc.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_cubit.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_event.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_state.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class ResendCodeBody extends StatelessWidget {
  const ResendCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ResendCodeCubit>();
    final formKey = GlobalKey<FormBuilderState>();

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
              LocaleKeys.auth_check_mail.tr(),
              style: context.titleSmall.copyWith(
                  color: ColorName.white, fontWeight: FontWeight.bold),
            ),
            context.verticalSpaceSmall,
            Text(
              LocaleKeys.auth_check_mail_content.tr(),
              style:
                  context.bodySmall.copyWith(color: ColorName.mediumTextColor),
            ),
            context.verticalSpaceMedium,
            UITextField(
              hintText: LocaleKeys.auth_input_code.tr(),
              onChanged: (value) => cubit.setCode(value ?? ''),
              onValidator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            context.verticalSpaceSmall,
            BlocConsumer<ResendCodeBloc, ResendCodeState>(
              listener: (context, state) {
                if (state is ResendCodeLoading) {
                  EasyLoading.show();
                } else if (state is ResendCodeFailure) {
                  EasyLoading.dismiss();
                  context.showError(state.message);
                } else if (state is ResendCodeSuccess) {
                  EasyLoading.dismiss();
                  context.pushRoute(
                    ResendNewPasswordRoute(code: cubit.state.code),
                  );
                }
              },
              builder: (context, state) {
                return UIButton(
                  title: LocaleKeys.save.tr(),
                  onPressed: () {
                    if (formKey.currentState?.saveAndValidate() ?? false) {
                      context.read<ResendCodeBloc>().add(
                            OnResendCodeCredentials(
                              params: LoginParams(
                                code: cubit.state.code,
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
            ),
            context.verticalSpaceMedium,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: LocaleKeys.auth_check_mail_not_received.tr(),
                    style: context.bodySmall.copyWith(
                      color: ColorName.white,
                    ),
                  ),
                  TextSpan(
                    text: LocaleKeys.auth_check_try_another.tr(),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.router.pop(),
                    style: context.bodySmall.copyWith(
                      color: ColorName.lightBlue,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

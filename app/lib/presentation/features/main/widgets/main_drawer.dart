import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/constants/app_hive_key.dart';
import 'package:app/core/constants/app_pref_key.dart';
import 'package:app/core/extension/app_extension.dart';
import 'package:app/core/mixins/mixin_dialog.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/services/hive_service.dart';
import 'package:app/core/utils/share_preferences_util.dart';
import 'package:app/di/inject_container.dart';
import 'package:app/domain/usecases/logout_usecase.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/blocs/logout/logout_bloc.dart';
import 'package:app/presentation/blocs/logout/logout_event.dart';
import 'package:app/presentation/blocs/logout/logout_state.dart';
import 'package:app/presentation/blocs/profile/get_profile_bloc.dart';
import 'package:app/presentation/blocs/profile/get_profile_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';

class MainDrawer extends StatelessWidget with DialogMixin {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    void logout() {
      context.read<LogoutBloc>().add(
            OnLogOut(
              params: LogoutParams(
                clientSecret: AppConstants.clientSecret,
                clientId: AppConstants.clientId,
                token: getIt<SharePreferencesUtil>().getString(
                  AppPrefKey.token,
                ),
              ),
            ),
          );
    }

    return BlocConsumer<LogoutBloc, LogoutState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          EasyLoading.dismiss();
          getIt<SharePreferencesUtil>().removeString(AppPrefKey.token);
          getIt<HiveService>().clearBox(AppHiveKey.hiveProfileBox);
          context.router.pushAndPopUntil(
            const AuthRoute(),
            predicate: (predicate) => false,
          );
        } else if (state is LogoutLoading) {
          EasyLoading.show();
        } else if (state is LogoutFailure) {
          EasyLoading.dismiss();
        }
      },
      builder: (context, state) {
        return BlocBuilder<GetProfileBloc, GetProfileState>(
          builder: (context, state) {
            if (state is GetProfileSuccess) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(Assets.images.imgHeaderDrawer.path),
                        Positioned(
                          bottom: 0,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.data.data?.userName ?? '',
                                style: context.titleSmall.copyWith(
                                  color: ColorName.white,
                                ),
                              ),
                              context.verticalSpaceSmall,
                              Text(
                                state.data.data?.title ?? '',
                                style: context.bodySmall.copyWith(
                                  color: ColorName.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    context.verticalSpaceMedium,
                    Expanded(
                      child: Stack(
                        children: [
                          Blur(
                            blur: 10,
                            blurColor: ColorName.secondaryButtonColor,
                            child: Container(
                              color: ColorName.secondaryButtonColor
                                  .withOpacity(0.6),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: SvgPicture.asset(
                                  Assets.icons.iconSubscriptions.path,
                                ),
                                title: Text(
                                  LocaleKeys.main_subscriptions.tr(),
                                  style: context.bodySmall.copyWith(
                                    color: ColorName.white,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: SvgPicture.asset(
                                  Assets.icons.iconSetting.path,
                                ),
                                title: Text(
                                  LocaleKeys.main_settings.tr(),
                                  style: context.bodySmall.copyWith(
                                    color: ColorName.white,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              SafeArea(
                                child: GestureDetector(
                                  onTap: () {
                                    showAlertDialog(
                                      context,
                                      LocaleKeys.main_logout.tr(),
                                      LocaleKeys.main_logoutContent.tr(),
                                      onConfirm: logout,
                                    );
                                  },
                                  child: ListTile(
                                    leading: SvgPicture.asset(
                                      Assets.icons.iconLogout.path,
                                    ),
                                    title: Text(
                                      LocaleKeys.main_logout.tr(),
                                      style: context.bodySmall.copyWith(
                                        color: ColorName.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            } else {
              return Container();
            }
          },
        );
      },
    );
  }
}

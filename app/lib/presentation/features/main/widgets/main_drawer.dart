import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/blocs/profile/get_profile_bloc.dart';
import 'package:app/presentation/blocs/profile/get_profile_state.dart';
import 'package:blur/blur.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
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
                            style: context.bodySmall.copyWith(
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
                          color:
                              ColorName.secondaryButtonColor.withOpacity(0.6),
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
  }
}

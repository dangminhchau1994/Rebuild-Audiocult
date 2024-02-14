import 'package:app/core/constants/app_pref_key.dart';
import 'package:app/core/constants/app_route_names.dart';
import 'package:app/core/utils/share_preferences_util.dart';
import 'package:app/di/inject_container.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkStatus();
  }

  void checkStatus() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    if (!mounted) return;
    if (getIt<SharePreferencesUtil>().getString(AppPrefKey.token).isNotEmpty) {
      context.router.replaceNamed(AppRouteNames.main);
    } else {
      context.router.replaceNamed(AppRouteNames.auth);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          Assets.icons.iconSplash.path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

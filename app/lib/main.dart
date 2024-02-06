import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/extension/app_extension.dart';
import 'package:app/core/utils/loading_util.dart';
import 'package:app/di/inject_container.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/presentation/blocs/get_places/get_places_bloc.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_bloc.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_event.dart';
import 'package:app/presentation/blocs/login/login_bloc.dart';
import 'package:app/presentation/blocs/login/login_cubit.dart';
import 'package:app/presentation/blocs/register/register_bloc.dart';
import 'package:app/presentation/blocs/register/register_cubit.dart';
import 'package:app/presentation/features/auth/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
  LoadingUtil.configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: ColorName.secondaryButtonColor, // Color for Android
        statusBarBrightness:
            Brightness.dark, // Dark == white status bar -- for IOS.
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (_, child) => MaterialApp(
        title: tr('app_name'),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: context.myTheme,
        builder: EasyLoading.init(),
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => getIt<GetRolesBloc>()
                ..add(OnGetRoleCredential(
                    params: LoginParams(
                  clientId: AppConstants.clientId,
                  clientSecret: AppConstants.clientSecret,
                  grantType: AppConstants.roleGranType,
                ))),
            ),
            BlocProvider(
              create: (_) => getIt<RegisterCubit>(),
            ),
            BlocProvider(
              create: (_) => getIt<GetPlacesBloc>(),
            ),
            BlocProvider(
              create: (_) => getIt<RegisterBloc>(),
            ),
            BlocProvider(
              create: (_) => getIt<LoginBloc>(),
            ),
            BlocProvider(
              create: (_) => getIt<LoginCubit>(),
            ),
          ],
          child: const AuthScreen(),
        ),
      ),
    );
  }
}

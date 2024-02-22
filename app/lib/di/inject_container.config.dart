// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i34;

import '../core/services/hive_service.dart' as _i7;
import '../core/utils/share_preferences_util.dart' as _i56;
import '../data/datasources/create_new_password_datasource.dart' as _i35;
import '../data/datasources/get_feeds_datasource.dart' as _i5;
import '../data/datasources/get_profile_datasource.dart' as _i6;
import '../data/datasources/login_data_source.dart' as _i9;
import '../data/datasources/logout_data_source.dart' as _i13;
import '../data/datasources/places_data_source.dart' as _i17;
import '../data/datasources/register_data_source.dart' as _i19;
import '../data/datasources/resend_code_data_source.dart' as _i24;
import '../data/datasources/resend_password_data_source.dart' as _i29;
import '../data/datasources/roles_data_source.dart' as _i33;
import '../data/repositories/create_new_password_repository_impl.dart' as _i37;
import '../data/repositories/get_feed_repository_impl.dart' as _i40;
import '../data/repositories/get_profile_repository_impl.dart' as _i46;
import '../data/repositories/login_repository_impl.dart' as _i11;
import '../data/repositories/logout_repository_impl.dart' as _i15;
import '../data/repositories/places_repository_impl.dart' as _i43;
import '../data/repositories/register_repository_impl.dart' as _i21;
import '../data/repositories/resend_code_repository_impl.dart' as _i26;
import '../data/repositories/resend_password_repository_impl.dart' as _i31;
import '../data/repositories/role_repository_impl.dart' as _i49;
import '../domain/repositories/create_new_password_repository.dart' as _i36;
import '../domain/repositories/get_feeds_repository.dart' as _i39;
import '../domain/repositories/get_places_repository.dart' as _i42;
import '../domain/repositories/get_profile_repository.dart' as _i45;
import '../domain/repositories/get_roles_repository.dart' as _i48;
import '../domain/repositories/login_repository.dart' as _i10;
import '../domain/repositories/logout_repository.dart' as _i14;
import '../domain/repositories/register_repository.dart' as _i20;
import '../domain/repositories/resend_code_repository.dart' as _i25;
import '../domain/repositories/resend_password_repository.dart' as _i30;
import '../domain/usecases/create_new_password_usecase.dart' as _i38;
import '../domain/usecases/get_feeds_usecase.dart' as _i41;
import '../domain/usecases/get_place_detail_usecase.dart' as _i58;
import '../domain/usecases/get_places_usecase.dart' as _i44;
import '../domain/usecases/get_profile_usecase.dart' as _i47;
import '../domain/usecases/get_roles_usecase.dart' as _i50;
import '../domain/usecases/login_usecase.dart' as _i12;
import '../domain/usecases/logout_usecase.dart' as _i16;
import '../domain/usecases/register_usecase.dart' as _i22;
import '../domain/usecases/resend_code_usecase.dart' as _i27;
import '../domain/usecases/resend_password_usecase.dart' as _i32;
import '../presentation/blocs/create_new_password/create_new_password_bloc.dart'
    as _i57;
import '../presentation/blocs/create_new_password/create_new_password_cubit.dart'
    as _i3;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i59;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i61;
import '../presentation/blocs/login/login_bloc.dart' as _i51;
import '../presentation/blocs/login/login_cubit.dart' as _i8;
import '../presentation/blocs/logout/logout_bloc.dart' as _i52;
import '../presentation/blocs/profile/get_profile_bloc.dart' as _i60;
import '../presentation/blocs/register/register_bloc.dart' as _i53;
import '../presentation/blocs/register/register_cubit.dart' as _i18;
import '../presentation/blocs/resend_code/resend_code_bloc.dart' as _i54;
import '../presentation/blocs/resend_code/resend_code_cubit.dart' as _i23;
import '../presentation/blocs/resend_password/resend_password_bloc.dart'
    as _i55;
import '../presentation/blocs/resend_password/resend_password_cubit.dart'
    as _i28;
import 'register_module.dart' as _i62;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.CreateNewPasswordCubit>(() => _i3.CreateNewPasswordCubit());
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio());
    gh.factory<_i5.GetFeedDataSource>(
        () => _i5.GetFeedDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i6.GetProfileDataSource>(
        () => _i6.GetProfileDataSource.create(gh<_i4.Dio>()));
    gh.singleton<_i7.HiveService>(registerModule.hiveService);
    gh.factory<_i8.LoginCubit>(() => _i8.LoginCubit());
    gh.factory<_i9.LoginDataSource>(
        () => _i9.LoginDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i10.LoginRepository>(() =>
        _i11.LoginRepositoryImpl(loginDataSource: gh<_i9.LoginDataSource>()));
    gh.singleton<_i12.LoginUseCase>(
        _i12.LoginUseCase(repository: gh<_i10.LoginRepository>()));
    gh.factory<_i13.LogoutDataSource>(
        () => _i13.LogoutDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i14.LogoutRepository>(() =>
        _i15.LogoutRepositoryImpl(dataSource: gh<_i13.LogoutDataSource>()));
    gh.singleton<_i16.LogoutUsecase>(
        _i16.LogoutUsecase(repository: gh<_i14.LogoutRepository>()));
    gh.factory<_i17.PlacesDataSource>(
        () => _i17.PlacesDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i18.RegisterCubit>(() => _i18.RegisterCubit());
    gh.factory<_i19.RegisterDataSource>(
        () => _i19.RegisterDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i20.RegisterRepository>(() =>
        _i21.RegisterRepositoryImpl(dataSource: gh<_i19.RegisterDataSource>()));
    gh.singleton<_i22.RegisterUseCase>(
        _i22.RegisterUseCase(repository: gh<_i20.RegisterRepository>()));
    gh.factory<_i23.ResendCodeCubit>(() => _i23.ResendCodeCubit());
    gh.factory<_i24.ResendCodeDataSource>(
        () => _i24.ResendCodeDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i25.ResendCodeRepository>(() => _i26.ResendCodeRepositoryImpl(
        resendCodeDataSource: gh<_i24.ResendCodeDataSource>()));
    gh.singleton<_i27.ResendCodeUseCase>(
        _i27.ResendCodeUseCase(repository: gh<_i25.ResendCodeRepository>()));
    gh.factory<_i28.ResendPasswordCubit>(() => _i28.ResendPasswordCubit());
    gh.factory<_i29.ResendPasswordDataSource>(
        () => _i29.ResendPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i30.ResendPasswordRepository>(() =>
        _i31.ResendPasswordRepositoryImpl(
            dataSource: gh<_i29.ResendPasswordDataSource>()));
    gh.singleton<_i32.ResendPasswordUseCase>(_i32.ResendPasswordUseCase(
        repository: gh<_i30.ResendPasswordRepository>()));
    gh.factory<_i33.RolesDataSource>(
        () => _i33.RolesDataSource.create(gh<_i4.Dio>()));
    await gh.factoryAsync<_i34.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i35.CreateNewPasswordDataSource>(
        () => _i35.CreateNewPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i36.CreateNewPasswordRepository>(() =>
        _i37.CreateNewPasswordRepositoryImpl(
            createNewPasswordDataSource:
                gh<_i35.CreateNewPasswordDataSource>()));
    gh.singleton<_i38.CreateNewPasswordUseCase>(_i38.CreateNewPasswordUseCase(
        repository: gh<_i36.CreateNewPasswordRepository>()));
    gh.factory<_i39.GetFeedsRepository>(() => _i40.GetFeedRepositoryImpl(
          dataSource: gh<_i5.GetFeedDataSource>(),
          hiveService: gh<_i7.HiveService>(),
        ));
    gh.singleton<_i41.GetFeedsUseCase>(
        _i41.GetFeedsUseCase(repository: gh<_i39.GetFeedsRepository>()));
    gh.factory<_i42.GetPlacesRepository>(() =>
        _i43.GetPlacesRepositoryImpl(dataSource: gh<_i17.PlacesDataSource>()));
    gh.singleton<_i44.GetPlacesUseCase>(
        _i44.GetPlacesUseCase(repository: gh<_i42.GetPlacesRepository>()));
    gh.factory<_i45.GetProfileRepository>(() => _i46.GetProfileRepositoryImpl(
          getProfielDataSource: gh<_i6.GetProfileDataSource>(),
          hiveService: gh<_i7.HiveService>(),
        ));
    gh.singleton<_i47.GetProfileUseCase>(_i47.GetProfileUseCase(
        getProfileRepository: gh<_i45.GetProfileRepository>()));
    gh.factory<_i48.GetRolesRepository>(() =>
        _i49.RoleRepositoryImpl(rolesDataSource: gh<_i33.RolesDataSource>()));
    gh.singleton<_i50.GetRolesUseCase>(
        _i50.GetRolesUseCase(rolesRepository: gh<_i48.GetRolesRepository>()));
    gh.factory<_i51.LoginBloc>(
        () => _i51.LoginBloc(useCase: gh<_i12.LoginUseCase>()));
    gh.factory<_i52.LogoutBloc>(
        () => _i52.LogoutBloc(logoutUsecase: gh<_i16.LogoutUsecase>()));
    gh.factory<_i53.RegisterBloc>(() => _i53.RegisterBloc(
          useCase: gh<_i22.RegisterUseCase>(),
          loginUseCase: gh<_i12.LoginUseCase>(),
        ));
    gh.factory<_i54.ResendCodeBloc>(() => _i54.ResendCodeBloc(
          loginUseCase: gh<_i12.LoginUseCase>(),
          resendCodeUseCase: gh<_i27.ResendCodeUseCase>(),
        ));
    gh.factory<_i55.ResendPasswordBloc>(() => _i55.ResendPasswordBloc(
          loginUseCase: gh<_i12.LoginUseCase>(),
          resendPasswordUseCase: gh<_i32.ResendPasswordUseCase>(),
        ));
    gh.singleton<_i56.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i34.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.factory<_i57.CreateNewPasswordBloc>(() => _i57.CreateNewPasswordBloc(
          createNewPasswordUseCase: gh<_i38.CreateNewPasswordUseCase>(),
          loginUseCase: gh<_i12.LoginUseCase>(),
        ));
    gh.singleton<_i58.GetPlaceDetailUseCase>(
        _i58.GetPlaceDetailUseCase(repository: gh<_i42.GetPlacesRepository>()));
    gh.factory<_i59.GetPlacesBloc>(() => _i59.GetPlacesBloc(
          useCase: gh<_i44.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i58.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i60.GetProfileBloc>(() =>
        _i60.GetProfileBloc(getProfileUseCase: gh<_i47.GetProfileUseCase>()));
    gh.factory<_i61.GetRolesBloc>(() => _i61.GetRolesBloc(
          getRolesUseCase: gh<_i50.GetRolesUseCase>(),
          loginUseCase: gh<_i12.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i62.RegisterModule {}

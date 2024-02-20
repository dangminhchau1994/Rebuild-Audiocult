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
import 'package:shared_preferences/shared_preferences.dart' as _i33;

import '../core/services/hive_service.dart' as _i6;
import '../core/utils/share_preferences_util.dart' as _i52;
import '../data/datasources/create_new_password_datasource.dart' as _i34;
import '../data/datasources/get_profile_datasource.dart' as _i5;
import '../data/datasources/login_data_source.dart' as _i8;
import '../data/datasources/logout_data_source.dart' as _i12;
import '../data/datasources/places_data_source.dart' as _i16;
import '../data/datasources/register_data_source.dart' as _i18;
import '../data/datasources/resend_code_data_source.dart' as _i23;
import '../data/datasources/resend_password_data_source.dart' as _i28;
import '../data/datasources/roles_data_source.dart' as _i32;
import '../data/repositories/create_new_password_repository_impl.dart' as _i36;
import '../data/repositories/get_profile_repository_impl.dart' as _i42;
import '../data/repositories/login_repository_impl.dart' as _i10;
import '../data/repositories/logout_repository_impl.dart' as _i14;
import '../data/repositories/places_repository_impl.dart' as _i39;
import '../data/repositories/register_repository_impl.dart' as _i20;
import '../data/repositories/resend_code_repository_impl.dart' as _i25;
import '../data/repositories/resend_password_repository_impl.dart' as _i30;
import '../data/repositories/role_repository_impl.dart' as _i45;
import '../domain/repositories/create_new_password_repository.dart' as _i35;
import '../domain/repositories/get_places_repository.dart' as _i38;
import '../domain/repositories/get_profile_repository.dart' as _i41;
import '../domain/repositories/get_roles_repository.dart' as _i44;
import '../domain/repositories/login_repository.dart' as _i9;
import '../domain/repositories/logout_repository.dart' as _i13;
import '../domain/repositories/register_repository.dart' as _i19;
import '../domain/repositories/resend_code_repository.dart' as _i24;
import '../domain/repositories/resend_password_repository.dart' as _i29;
import '../domain/usecases/create_new_password_usecase.dart' as _i37;
import '../domain/usecases/get_place_detail_usecase.dart' as _i54;
import '../domain/usecases/get_places_usecase.dart' as _i40;
import '../domain/usecases/get_profile_usecase.dart' as _i43;
import '../domain/usecases/get_roles_usecase.dart' as _i46;
import '../domain/usecases/login_usecase.dart' as _i11;
import '../domain/usecases/logout_usecase.dart' as _i15;
import '../domain/usecases/register_usecase.dart' as _i21;
import '../domain/usecases/resend_code_usecase.dart' as _i26;
import '../domain/usecases/resend_password_usecase.dart' as _i31;
import '../presentation/blocs/create_new_password/create_new_password_bloc.dart'
    as _i53;
import '../presentation/blocs/create_new_password/create_new_password_cubit.dart'
    as _i3;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i55;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i57;
import '../presentation/blocs/login/login_bloc.dart' as _i47;
import '../presentation/blocs/login/login_cubit.dart' as _i7;
import '../presentation/blocs/logout/logout_bloc.dart' as _i48;
import '../presentation/blocs/profile/get_profile_bloc.dart' as _i56;
import '../presentation/blocs/register/register_bloc.dart' as _i49;
import '../presentation/blocs/register/register_cubit.dart' as _i17;
import '../presentation/blocs/resend_code/resend_code_bloc.dart' as _i50;
import '../presentation/blocs/resend_code/resend_code_cubit.dart' as _i22;
import '../presentation/blocs/resend_password/resend_password_bloc.dart'
    as _i51;
import '../presentation/blocs/resend_password/resend_password_cubit.dart'
    as _i27;
import 'register_module.dart' as _i58;

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
    gh.factory<_i5.GetProfileDataSource>(
        () => _i5.GetProfileDataSource.create(gh<_i4.Dio>()));
    gh.singleton<_i6.HiveService>(registerModule.hiveService);
    gh.factory<_i7.LoginCubit>(() => _i7.LoginCubit());
    gh.factory<_i8.LoginDataSource>(
        () => _i8.LoginDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i9.LoginRepository>(() =>
        _i10.LoginRepositoryImpl(loginDataSource: gh<_i8.LoginDataSource>()));
    gh.singleton<_i11.LoginUseCase>(
        _i11.LoginUseCase(repository: gh<_i9.LoginRepository>()));
    gh.factory<_i12.LogoutDataSource>(
        () => _i12.LogoutDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i13.LogoutRepository>(() =>
        _i14.LogoutRepositoryImpl(dataSource: gh<_i12.LogoutDataSource>()));
    gh.singleton<_i15.LogoutUsecase>(
        _i15.LogoutUsecase(repository: gh<_i13.LogoutRepository>()));
    gh.factory<_i16.PlacesDataSource>(
        () => _i16.PlacesDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i17.RegisterCubit>(() => _i17.RegisterCubit());
    gh.factory<_i18.RegisterDataSource>(
        () => _i18.RegisterDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i19.RegisterRepository>(() =>
        _i20.RegisterRepositoryImpl(dataSource: gh<_i18.RegisterDataSource>()));
    gh.singleton<_i21.RegisterUseCase>(
        _i21.RegisterUseCase(repository: gh<_i19.RegisterRepository>()));
    gh.factory<_i22.ResendCodeCubit>(() => _i22.ResendCodeCubit());
    gh.factory<_i23.ResendCodeDataSource>(
        () => _i23.ResendCodeDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i24.ResendCodeRepository>(() => _i25.ResendCodeRepositoryImpl(
        resendCodeDataSource: gh<_i23.ResendCodeDataSource>()));
    gh.singleton<_i26.ResendCodeUseCase>(
        _i26.ResendCodeUseCase(repository: gh<_i24.ResendCodeRepository>()));
    gh.factory<_i27.ResendPasswordCubit>(() => _i27.ResendPasswordCubit());
    gh.factory<_i28.ResendPasswordDataSource>(
        () => _i28.ResendPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i29.ResendPasswordRepository>(() =>
        _i30.ResendPasswordRepositoryImpl(
            dataSource: gh<_i28.ResendPasswordDataSource>()));
    gh.singleton<_i31.ResendPasswordUseCase>(_i31.ResendPasswordUseCase(
        repository: gh<_i29.ResendPasswordRepository>()));
    gh.factory<_i32.RolesDataSource>(
        () => _i32.RolesDataSource.create(gh<_i4.Dio>()));
    await gh.factoryAsync<_i33.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i34.CreateNewPasswordDataSource>(
        () => _i34.CreateNewPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i35.CreateNewPasswordRepository>(() =>
        _i36.CreateNewPasswordRepositoryImpl(
            createNewPasswordDataSource:
                gh<_i34.CreateNewPasswordDataSource>()));
    gh.singleton<_i37.CreateNewPasswordUseCase>(_i37.CreateNewPasswordUseCase(
        repository: gh<_i35.CreateNewPasswordRepository>()));
    gh.factory<_i38.GetPlacesRepository>(() =>
        _i39.GetPlacesRepositoryImpl(dataSource: gh<_i16.PlacesDataSource>()));
    gh.singleton<_i40.GetPlacesUseCase>(
        _i40.GetPlacesUseCase(repository: gh<_i38.GetPlacesRepository>()));
    gh.factory<_i41.GetProfileRepository>(() => _i42.GetProfileRepositoryImpl(
          getProfielDataSource: gh<_i5.GetProfileDataSource>(),
          hiveService: gh<_i6.HiveService>(),
        ));
    gh.singleton<_i43.GetProfileUseCase>(_i43.GetProfileUseCase(
        getProfileRepository: gh<_i41.GetProfileRepository>()));
    gh.factory<_i44.GetRolesRepository>(() =>
        _i45.RoleRepositoryImpl(rolesDataSource: gh<_i32.RolesDataSource>()));
    gh.singleton<_i46.GetRolesUseCase>(
        _i46.GetRolesUseCase(rolesRepository: gh<_i44.GetRolesRepository>()));
    gh.factory<_i47.LoginBloc>(
        () => _i47.LoginBloc(useCase: gh<_i11.LoginUseCase>()));
    gh.factory<_i48.LogoutBloc>(
        () => _i48.LogoutBloc(logoutUsecase: gh<_i15.LogoutUsecase>()));
    gh.factory<_i49.RegisterBloc>(() => _i49.RegisterBloc(
          useCase: gh<_i21.RegisterUseCase>(),
          loginUseCase: gh<_i11.LoginUseCase>(),
        ));
    gh.factory<_i50.ResendCodeBloc>(() => _i50.ResendCodeBloc(
          loginUseCase: gh<_i11.LoginUseCase>(),
          resendCodeUseCase: gh<_i26.ResendCodeUseCase>(),
        ));
    gh.factory<_i51.ResendPasswordBloc>(() => _i51.ResendPasswordBloc(
          loginUseCase: gh<_i11.LoginUseCase>(),
          resendPasswordUseCase: gh<_i31.ResendPasswordUseCase>(),
        ));
    gh.singleton<_i52.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i33.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.factory<_i53.CreateNewPasswordBloc>(() => _i53.CreateNewPasswordBloc(
          createNewPasswordUseCase: gh<_i37.CreateNewPasswordUseCase>(),
          loginUseCase: gh<_i11.LoginUseCase>(),
        ));
    gh.singleton<_i54.GetPlaceDetailUseCase>(
        _i54.GetPlaceDetailUseCase(repository: gh<_i38.GetPlacesRepository>()));
    gh.factory<_i55.GetPlacesBloc>(() => _i55.GetPlacesBloc(
          useCase: gh<_i40.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i54.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i56.GetProfileBloc>(() =>
        _i56.GetProfileBloc(getProfileUseCase: gh<_i43.GetProfileUseCase>()));
    gh.factory<_i57.GetRolesBloc>(() => _i57.GetRolesBloc(
          getRolesUseCase: gh<_i46.GetRolesUseCase>(),
          loginUseCase: gh<_i11.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i58.RegisterModule {}

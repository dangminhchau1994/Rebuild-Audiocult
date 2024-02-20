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
import 'package:shared_preferences/shared_preferences.dart' as _i31;

import '../core/services/hive_service.dart' as _i6;
import '../core/utils/share_preferences_util.dart' as _i49;
import '../data/datasources/create_new_password_datasource.dart' as _i32;
import '../data/datasources/get_profile_datasource.dart' as _i5;
import '../data/datasources/login_data_source.dart' as _i8;
import '../data/datasources/places_data_source.dart' as _i14;
import '../data/datasources/register_data_source.dart' as _i16;
import '../data/datasources/resend_code_data_source.dart' as _i21;
import '../data/datasources/resend_password_data_source.dart' as _i26;
import '../data/datasources/roles_data_source.dart' as _i30;
import '../data/repositories/create_new_password_repository_impl.dart' as _i34;
import '../data/repositories/get_profile_repository_impl.dart' as _i40;
import '../data/repositories/login_repository_impl.dart' as _i10;
import '../data/repositories/places_repository_impl.dart' as _i37;
import '../data/repositories/register_repository_impl.dart' as _i18;
import '../data/repositories/resend_code_repository_impl.dart' as _i23;
import '../data/repositories/resend_password_repository_impl.dart' as _i28;
import '../data/repositories/role_repository_impl.dart' as _i43;
import '../domain/repositories/create_new_password_repository.dart' as _i33;
import '../domain/repositories/get_places_repository.dart' as _i36;
import '../domain/repositories/get_profile_repository.dart' as _i39;
import '../domain/repositories/get_roles_repository.dart' as _i42;
import '../domain/repositories/login_repository.dart' as _i9;
import '../domain/repositories/logout_repository.dart' as _i13;
import '../domain/repositories/register_repository.dart' as _i17;
import '../domain/repositories/resend_code_repository.dart' as _i22;
import '../domain/repositories/resend_password_repository.dart' as _i27;
import '../domain/usecases/create_new_password_usecase.dart' as _i35;
import '../domain/usecases/get_place_detail_usecase.dart' as _i51;
import '../domain/usecases/get_places_usecase.dart' as _i38;
import '../domain/usecases/get_profile_usecase.dart' as _i41;
import '../domain/usecases/get_roles_usecase.dart' as _i44;
import '../domain/usecases/login_usecase.dart' as _i11;
import '../domain/usecases/logout_usecase.dart' as _i12;
import '../domain/usecases/register_usecase.dart' as _i19;
import '../domain/usecases/resend_code_usecase.dart' as _i24;
import '../domain/usecases/resend_password_usecase.dart' as _i29;
import '../presentation/blocs/create_new_password/create_new_password_bloc.dart'
    as _i50;
import '../presentation/blocs/create_new_password/create_new_password_cubit.dart'
    as _i3;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i52;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i54;
import '../presentation/blocs/login/login_bloc.dart' as _i45;
import '../presentation/blocs/login/login_cubit.dart' as _i7;
import '../presentation/blocs/profile/get_profile_bloc.dart' as _i53;
import '../presentation/blocs/register/register_bloc.dart' as _i46;
import '../presentation/blocs/register/register_cubit.dart' as _i15;
import '../presentation/blocs/resend_code/resend_code_bloc.dart' as _i47;
import '../presentation/blocs/resend_code/resend_code_cubit.dart' as _i20;
import '../presentation/blocs/resend_password/resend_password_bloc.dart'
    as _i48;
import '../presentation/blocs/resend_password/resend_password_cubit.dart'
    as _i25;
import 'register_module.dart' as _i55;

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
    gh.singleton<_i12.LogoutUsecase>(
        _i12.LogoutUsecase(repository: gh<_i13.LogoutRepository>()));
    gh.factory<_i14.PlacesDataSource>(
        () => _i14.PlacesDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i15.RegisterCubit>(() => _i15.RegisterCubit());
    gh.factory<_i16.RegisterDataSource>(
        () => _i16.RegisterDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i17.RegisterRepository>(() =>
        _i18.RegisterRepositoryImpl(dataSource: gh<_i16.RegisterDataSource>()));
    gh.singleton<_i19.RegisterUseCase>(
        _i19.RegisterUseCase(repository: gh<_i17.RegisterRepository>()));
    gh.factory<_i20.ResendCodeCubit>(() => _i20.ResendCodeCubit());
    gh.factory<_i21.ResendCodeDataSource>(
        () => _i21.ResendCodeDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i22.ResendCodeRepository>(() => _i23.ResendCodeRepositoryImpl(
        resendCodeDataSource: gh<_i21.ResendCodeDataSource>()));
    gh.singleton<_i24.ResendCodeUseCase>(
        _i24.ResendCodeUseCase(repository: gh<_i22.ResendCodeRepository>()));
    gh.factory<_i25.ResendPasswordCubit>(() => _i25.ResendPasswordCubit());
    gh.factory<_i26.ResendPasswordDataSource>(
        () => _i26.ResendPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i27.ResendPasswordRepository>(() =>
        _i28.ResendPasswordRepositoryImpl(
            dataSource: gh<_i26.ResendPasswordDataSource>()));
    gh.singleton<_i29.ResendPasswordUseCase>(_i29.ResendPasswordUseCase(
        repository: gh<_i27.ResendPasswordRepository>()));
    gh.factory<_i30.RolesDataSource>(
        () => _i30.RolesDataSource.create(gh<_i4.Dio>()));
    await gh.factoryAsync<_i31.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i32.CreateNewPasswordDataSource>(
        () => _i32.CreateNewPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i33.CreateNewPasswordRepository>(() =>
        _i34.CreateNewPasswordRepositoryImpl(
            createNewPasswordDataSource:
                gh<_i32.CreateNewPasswordDataSource>()));
    gh.singleton<_i35.CreateNewPasswordUseCase>(_i35.CreateNewPasswordUseCase(
        repository: gh<_i33.CreateNewPasswordRepository>()));
    gh.factory<_i36.GetPlacesRepository>(() =>
        _i37.GetPlacesRepositoryImpl(dataSource: gh<_i14.PlacesDataSource>()));
    gh.singleton<_i38.GetPlacesUseCase>(
        _i38.GetPlacesUseCase(repository: gh<_i36.GetPlacesRepository>()));
    gh.factory<_i39.GetProfileRepository>(() => _i40.GetProfileRepositoryImpl(
          getProfielDataSource: gh<_i5.GetProfileDataSource>(),
          hiveService: gh<_i6.HiveService>(),
        ));
    gh.singleton<_i41.GetProfileUseCase>(_i41.GetProfileUseCase(
        getProfileRepository: gh<_i39.GetProfileRepository>()));
    gh.factory<_i42.GetRolesRepository>(() =>
        _i43.RoleRepositoryImpl(rolesDataSource: gh<_i30.RolesDataSource>()));
    gh.singleton<_i44.GetRolesUseCase>(
        _i44.GetRolesUseCase(rolesRepository: gh<_i42.GetRolesRepository>()));
    gh.factory<_i45.LoginBloc>(
        () => _i45.LoginBloc(useCase: gh<_i11.LoginUseCase>()));
    gh.factory<_i46.RegisterBloc>(() => _i46.RegisterBloc(
          useCase: gh<_i19.RegisterUseCase>(),
          loginUseCase: gh<_i11.LoginUseCase>(),
        ));
    gh.factory<_i47.ResendCodeBloc>(() => _i47.ResendCodeBloc(
          loginUseCase: gh<_i11.LoginUseCase>(),
          resendCodeUseCase: gh<_i24.ResendCodeUseCase>(),
        ));
    gh.factory<_i48.ResendPasswordBloc>(() => _i48.ResendPasswordBloc(
          loginUseCase: gh<_i11.LoginUseCase>(),
          resendPasswordUseCase: gh<_i29.ResendPasswordUseCase>(),
        ));
    gh.singleton<_i49.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i31.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.factory<_i50.CreateNewPasswordBloc>(() => _i50.CreateNewPasswordBloc(
          createNewPasswordUseCase: gh<_i35.CreateNewPasswordUseCase>(),
          loginUseCase: gh<_i11.LoginUseCase>(),
        ));
    gh.singleton<_i51.GetPlaceDetailUseCase>(
        _i51.GetPlaceDetailUseCase(repository: gh<_i36.GetPlacesRepository>()));
    gh.factory<_i52.GetPlacesBloc>(() => _i52.GetPlacesBloc(
          useCase: gh<_i38.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i51.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i53.GetProfileBloc>(() =>
        _i53.GetProfileBloc(getProfileUseCase: gh<_i41.GetProfileUseCase>()));
    gh.factory<_i54.GetRolesBloc>(() => _i54.GetRolesBloc(
          getRolesUseCase: gh<_i44.GetRolesUseCase>(),
          loginUseCase: gh<_i11.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i55.RegisterModule {}

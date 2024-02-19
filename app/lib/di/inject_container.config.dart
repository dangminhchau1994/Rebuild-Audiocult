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
import 'package:shared_preferences/shared_preferences.dart' as _i29;

import '../core/services/hive_service.dart' as _i6;
import '../core/utils/share_preferences_util.dart' as _i47;
import '../data/datasources/create_new_password_datasource.dart' as _i30;
import '../data/datasources/get_profile_datasource.dart' as _i5;
import '../data/datasources/login_data_source.dart' as _i8;
import '../data/datasources/places_data_source.dart' as _i12;
import '../data/datasources/register_data_source.dart' as _i14;
import '../data/datasources/resend_code_data_source.dart' as _i19;
import '../data/datasources/resend_password_data_source.dart' as _i24;
import '../data/datasources/roles_data_source.dart' as _i28;
import '../data/repositories/create_new_password_repository_impl.dart' as _i32;
import '../data/repositories/get_profile_repository_impl.dart' as _i38;
import '../data/repositories/login_repository_impl.dart' as _i10;
import '../data/repositories/places_repository_impl.dart' as _i35;
import '../data/repositories/register_repository_impl.dart' as _i16;
import '../data/repositories/resend_code_repository_impl.dart' as _i21;
import '../data/repositories/resend_password_repository_impl.dart' as _i26;
import '../data/repositories/role_repository_impl.dart' as _i41;
import '../domain/repositories/create_new_password_repository.dart' as _i31;
import '../domain/repositories/get_places_repository.dart' as _i34;
import '../domain/repositories/get_profile_repository.dart' as _i37;
import '../domain/repositories/get_roles_repository.dart' as _i40;
import '../domain/repositories/login_repository.dart' as _i9;
import '../domain/repositories/register_repository.dart' as _i15;
import '../domain/repositories/resend_code_repository.dart' as _i20;
import '../domain/repositories/resend_password_repository.dart' as _i25;
import '../domain/usecases/create_new_password_usecase.dart' as _i33;
import '../domain/usecases/get_place_detail_usecase.dart' as _i49;
import '../domain/usecases/get_places_usecase.dart' as _i36;
import '../domain/usecases/get_profile_usecase.dart' as _i39;
import '../domain/usecases/get_roles_usecase.dart' as _i42;
import '../domain/usecases/login_usecase.dart' as _i11;
import '../domain/usecases/register_usecase.dart' as _i17;
import '../domain/usecases/resend_code_usecase.dart' as _i22;
import '../domain/usecases/resend_password_usecase.dart' as _i27;
import '../presentation/blocs/create_new_password/create_new_password_bloc.dart'
    as _i48;
import '../presentation/blocs/create_new_password/create_new_password_cubit.dart'
    as _i3;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i50;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i52;
import '../presentation/blocs/login/login_bloc.dart' as _i43;
import '../presentation/blocs/login/login_cubit.dart' as _i7;
import '../presentation/blocs/profile/get_profile_bloc.dart' as _i51;
import '../presentation/blocs/register/register_bloc.dart' as _i44;
import '../presentation/blocs/register/register_cubit.dart' as _i13;
import '../presentation/blocs/resend_code/resend_code_bloc.dart' as _i45;
import '../presentation/blocs/resend_code/resend_code_cubit.dart' as _i18;
import '../presentation/blocs/resend_password/resend_password_bloc.dart'
    as _i46;
import '../presentation/blocs/resend_password/resend_password_cubit.dart'
    as _i23;
import 'register_module.dart' as _i53;

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
    gh.factory<_i12.PlacesDataSource>(
        () => _i12.PlacesDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i13.RegisterCubit>(() => _i13.RegisterCubit());
    gh.factory<_i14.RegisterDataSource>(
        () => _i14.RegisterDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i15.RegisterRepository>(() =>
        _i16.RegisterRepositoryImpl(dataSource: gh<_i14.RegisterDataSource>()));
    gh.singleton<_i17.RegisterUseCase>(
        _i17.RegisterUseCase(repository: gh<_i15.RegisterRepository>()));
    gh.factory<_i18.ResendCodeCubit>(() => _i18.ResendCodeCubit());
    gh.factory<_i19.ResendCodeDataSource>(
        () => _i19.ResendCodeDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i20.ResendCodeRepository>(() => _i21.ResendCodeRepositoryImpl(
        resendCodeDataSource: gh<_i19.ResendCodeDataSource>()));
    gh.singleton<_i22.ResendCodeUseCase>(
        _i22.ResendCodeUseCase(repository: gh<_i20.ResendCodeRepository>()));
    gh.factory<_i23.ResendPasswordCubit>(() => _i23.ResendPasswordCubit());
    gh.factory<_i24.ResendPasswordDataSource>(
        () => _i24.ResendPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i25.ResendPasswordRepository>(() =>
        _i26.ResendPasswordRepositoryImpl(
            dataSource: gh<_i24.ResendPasswordDataSource>()));
    gh.singleton<_i27.ResendPasswordUseCase>(_i27.ResendPasswordUseCase(
        repository: gh<_i25.ResendPasswordRepository>()));
    gh.factory<_i28.RolesDataSource>(
        () => _i28.RolesDataSource.create(gh<_i4.Dio>()));
    await gh.factoryAsync<_i29.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i30.CreateNewPasswordDataSource>(
        () => _i30.CreateNewPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i31.CreateNewPasswordRepository>(() =>
        _i32.CreateNewPasswordRepositoryImpl(
            createNewPasswordDataSource:
                gh<_i30.CreateNewPasswordDataSource>()));
    gh.singleton<_i33.CreateNewPasswordUseCase>(_i33.CreateNewPasswordUseCase(
        repository: gh<_i31.CreateNewPasswordRepository>()));
    gh.factory<_i34.GetPlacesRepository>(() =>
        _i35.GetPlacesRepositoryImpl(dataSource: gh<_i12.PlacesDataSource>()));
    gh.singleton<_i36.GetPlacesUseCase>(
        _i36.GetPlacesUseCase(repository: gh<_i34.GetPlacesRepository>()));
    gh.factory<_i37.GetProfileRepository>(() => _i38.GetProfileRepositoryImpl(
          getProfielDataSource: gh<_i5.GetProfileDataSource>(),
          hiveService: gh<_i6.HiveService>(),
        ));
    gh.singleton<_i39.GetProfileUseCase>(_i39.GetProfileUseCase(
        getProfileRepository: gh<_i37.GetProfileRepository>()));
    gh.factory<_i40.GetRolesRepository>(() =>
        _i41.RoleRepositoryImpl(rolesDataSource: gh<_i28.RolesDataSource>()));
    gh.singleton<_i42.GetRolesUseCase>(
        _i42.GetRolesUseCase(rolesRepository: gh<_i40.GetRolesRepository>()));
    gh.factory<_i43.LoginBloc>(
        () => _i43.LoginBloc(useCase: gh<_i11.LoginUseCase>()));
    gh.factory<_i44.RegisterBloc>(() => _i44.RegisterBloc(
          useCase: gh<_i17.RegisterUseCase>(),
          loginUseCase: gh<_i11.LoginUseCase>(),
        ));
    gh.factory<_i45.ResendCodeBloc>(() => _i45.ResendCodeBloc(
          loginUseCase: gh<_i11.LoginUseCase>(),
          resendCodeUseCase: gh<_i22.ResendCodeUseCase>(),
        ));
    gh.factory<_i46.ResendPasswordBloc>(() => _i46.ResendPasswordBloc(
          loginUseCase: gh<_i11.LoginUseCase>(),
          resendPasswordUseCase: gh<_i27.ResendPasswordUseCase>(),
        ));
    gh.singleton<_i47.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i29.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.factory<_i48.CreateNewPasswordBloc>(() => _i48.CreateNewPasswordBloc(
          createNewPasswordUseCase: gh<_i33.CreateNewPasswordUseCase>(),
          loginUseCase: gh<_i11.LoginUseCase>(),
        ));
    gh.singleton<_i49.GetPlaceDetailUseCase>(
        _i49.GetPlaceDetailUseCase(repository: gh<_i34.GetPlacesRepository>()));
    gh.factory<_i50.GetPlacesBloc>(() => _i50.GetPlacesBloc(
          useCase: gh<_i36.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i49.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i51.GetProfileBloc>(() =>
        _i51.GetProfileBloc(getProfileUseCase: gh<_i39.GetProfileUseCase>()));
    gh.factory<_i52.GetRolesBloc>(() => _i52.GetRolesBloc(
          getRolesUseCase: gh<_i42.GetRolesUseCase>(),
          loginUseCase: gh<_i11.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i53.RegisterModule {}

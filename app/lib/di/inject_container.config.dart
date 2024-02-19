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
import 'package:shared_preferences/shared_preferences.dart' as _i30;

import '../core/utils/share_preferences_util.dart' as _i45;
import '../data/datasources/create_new_password_datasource.dart' as _i31;
import '../data/datasources/get_profile_datasource.dart' as _i5;
import '../data/datasources/login_data_source.dart' as _i9;
import '../data/datasources/places_data_source.dart' as _i13;
import '../data/datasources/register_data_source.dart' as _i15;
import '../data/datasources/resend_code_data_source.dart' as _i20;
import '../data/datasources/resend_password_data_source.dart' as _i25;
import '../data/datasources/roles_data_source.dart' as _i29;
import '../data/repositories/create_new_password_repository_impl.dart' as _i33;
import '../data/repositories/login_repository_impl.dart' as _i11;
import '../data/repositories/places_repository_impl.dart' as _i36;
import '../data/repositories/register_repository_impl.dart' as _i17;
import '../data/repositories/resend_code_repository_impl.dart' as _i22;
import '../data/repositories/resend_password_repository_impl.dart' as _i27;
import '../data/repositories/role_repository_impl.dart' as _i39;
import '../domain/repositories/create_new_password_repository.dart' as _i32;
import '../domain/repositories/get_places_repository.dart' as _i35;
import '../domain/repositories/get_profile_repository.dart' as _i7;
import '../domain/repositories/get_roles_repository.dart' as _i38;
import '../domain/repositories/login_repository.dart' as _i10;
import '../domain/repositories/register_repository.dart' as _i16;
import '../domain/repositories/resend_code_repository.dart' as _i21;
import '../domain/repositories/resend_password_repository.dart' as _i26;
import '../domain/usecases/create_new_password_usecase.dart' as _i34;
import '../domain/usecases/get_place_detail_usecase.dart' as _i47;
import '../domain/usecases/get_places_usecase.dart' as _i37;
import '../domain/usecases/get_profile_usecase.dart' as _i6;
import '../domain/usecases/get_roles_usecase.dart' as _i40;
import '../domain/usecases/login_usecase.dart' as _i12;
import '../domain/usecases/register_usecase.dart' as _i18;
import '../domain/usecases/resend_code_usecase.dart' as _i23;
import '../domain/usecases/resend_password_usecase.dart' as _i28;
import '../presentation/blocs/create_new_password/create_new_password_bloc.dart'
    as _i46;
import '../presentation/blocs/create_new_password/create_new_password_cubit.dart'
    as _i3;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i48;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i49;
import '../presentation/blocs/login/login_bloc.dart' as _i41;
import '../presentation/blocs/login/login_cubit.dart' as _i8;
import '../presentation/blocs/register/register_bloc.dart' as _i42;
import '../presentation/blocs/register/register_cubit.dart' as _i14;
import '../presentation/blocs/resend_code/resend_code_bloc.dart' as _i43;
import '../presentation/blocs/resend_code/resend_code_cubit.dart' as _i19;
import '../presentation/blocs/resend_password/resend_password_bloc.dart'
    as _i44;
import '../presentation/blocs/resend_password/resend_password_cubit.dart'
    as _i24;
import 'register_module.dart' as _i50;

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
    gh.singleton<_i6.GetProfileUseCase>(_i6.GetProfileUseCase(
        getProfileRepository: gh<_i7.GetProfileRepository>()));
    gh.factory<_i8.LoginCubit>(() => _i8.LoginCubit());
    gh.factory<_i9.LoginDataSource>(
        () => _i9.LoginDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i10.LoginRepository>(() =>
        _i11.LoginRepositoryImpl(loginDataSource: gh<_i9.LoginDataSource>()));
    gh.singleton<_i12.LoginUseCase>(
        _i12.LoginUseCase(repository: gh<_i10.LoginRepository>()));
    gh.factory<_i13.PlacesDataSource>(
        () => _i13.PlacesDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i14.RegisterCubit>(() => _i14.RegisterCubit());
    gh.factory<_i15.RegisterDataSource>(
        () => _i15.RegisterDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i16.RegisterRepository>(() =>
        _i17.RegisterRepositoryImpl(dataSource: gh<_i15.RegisterDataSource>()));
    gh.singleton<_i18.RegisterUseCase>(
        _i18.RegisterUseCase(repository: gh<_i16.RegisterRepository>()));
    gh.factory<_i19.ResendCodeCubit>(() => _i19.ResendCodeCubit());
    gh.factory<_i20.ResendCodeDataSource>(
        () => _i20.ResendCodeDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i21.ResendCodeRepository>(() => _i22.ResendCodeRepositoryImpl(
        resendCodeDataSource: gh<_i20.ResendCodeDataSource>()));
    gh.singleton<_i23.ResendCodeUseCase>(
        _i23.ResendCodeUseCase(repository: gh<_i21.ResendCodeRepository>()));
    gh.factory<_i24.ResendPasswordCubit>(() => _i24.ResendPasswordCubit());
    gh.factory<_i25.ResendPasswordDataSource>(
        () => _i25.ResendPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i26.ResendPasswordRepository>(() =>
        _i27.ResendPasswordRepositoryImpl(
            dataSource: gh<_i25.ResendPasswordDataSource>()));
    gh.singleton<_i28.ResendPasswordUseCase>(_i28.ResendPasswordUseCase(
        repository: gh<_i26.ResendPasswordRepository>()));
    gh.factory<_i29.RolesDataSource>(
        () => _i29.RolesDataSource.create(gh<_i4.Dio>()));
    await gh.factoryAsync<_i30.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i31.CreateNewPasswordDataSource>(
        () => _i31.CreateNewPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i32.CreateNewPasswordRepository>(() =>
        _i33.CreateNewPasswordRepositoryImpl(
            createNewPasswordDataSource:
                gh<_i31.CreateNewPasswordDataSource>()));
    gh.singleton<_i34.CreateNewPasswordUseCase>(_i34.CreateNewPasswordUseCase(
        repository: gh<_i32.CreateNewPasswordRepository>()));
    gh.factory<_i35.GetPlacesRepository>(() =>
        _i36.GetPlacesRepositoryImpl(dataSource: gh<_i13.PlacesDataSource>()));
    gh.singleton<_i37.GetPlacesUseCase>(
        _i37.GetPlacesUseCase(repository: gh<_i35.GetPlacesRepository>()));
    gh.factory<_i38.GetRolesRepository>(() =>
        _i39.RoleRepositoryImpl(rolesDataSource: gh<_i29.RolesDataSource>()));
    gh.singleton<_i40.GetRolesUseCase>(
        _i40.GetRolesUseCase(rolesRepository: gh<_i38.GetRolesRepository>()));
    gh.factory<_i41.LoginBloc>(
        () => _i41.LoginBloc(useCase: gh<_i12.LoginUseCase>()));
    gh.factory<_i42.RegisterBloc>(() => _i42.RegisterBloc(
          useCase: gh<_i18.RegisterUseCase>(),
          loginUseCase: gh<_i12.LoginUseCase>(),
        ));
    gh.factory<_i43.ResendCodeBloc>(() => _i43.ResendCodeBloc(
          loginUseCase: gh<_i12.LoginUseCase>(),
          resendCodeUseCase: gh<_i23.ResendCodeUseCase>(),
        ));
    gh.factory<_i44.ResendPasswordBloc>(() => _i44.ResendPasswordBloc(
          loginUseCase: gh<_i12.LoginUseCase>(),
          resendPasswordUseCase: gh<_i28.ResendPasswordUseCase>(),
        ));
    gh.singleton<_i45.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i30.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.factory<_i46.CreateNewPasswordBloc>(() => _i46.CreateNewPasswordBloc(
          createNewPasswordUseCase: gh<_i34.CreateNewPasswordUseCase>(),
          loginUseCase: gh<_i12.LoginUseCase>(),
        ));
    gh.singleton<_i47.GetPlaceDetailUseCase>(
        _i47.GetPlaceDetailUseCase(repository: gh<_i35.GetPlacesRepository>()));
    gh.factory<_i48.GetPlacesBloc>(() => _i48.GetPlacesBloc(
          useCase: gh<_i37.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i47.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i49.GetRolesBloc>(() => _i49.GetRolesBloc(
          getRolesUseCase: gh<_i40.GetRolesUseCase>(),
          loginUseCase: gh<_i12.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i50.RegisterModule {}

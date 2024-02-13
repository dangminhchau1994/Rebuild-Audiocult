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
import 'package:shared_preferences/shared_preferences.dart' as _i27;

import '../core/utils/share_preferences_util.dart' as _i42;
import '../data/datasources/create_new_password_datasource.dart' as _i28;
import '../data/datasources/login_data_source.dart' as _i6;
import '../data/datasources/places_data_source.dart' as _i10;
import '../data/datasources/register_data_source.dart' as _i12;
import '../data/datasources/resend_code_data_source.dart' as _i17;
import '../data/datasources/resend_password_data_source.dart' as _i22;
import '../data/datasources/roles_data_source.dart' as _i26;
import '../data/repositories/create_new_password_repository_impl.dart' as _i30;
import '../data/repositories/login_repository_impl.dart' as _i8;
import '../data/repositories/places_repository_impl.dart' as _i33;
import '../data/repositories/register_repository_impl.dart' as _i14;
import '../data/repositories/resend_code_repository_impl.dart' as _i19;
import '../data/repositories/resend_password_repository_impl.dart' as _i24;
import '../data/repositories/role_repository_impl.dart' as _i36;
import '../domain/repositories/create_new_password_repository.dart' as _i29;
import '../domain/repositories/get_places_repository.dart' as _i32;
import '../domain/repositories/get_roles_repository.dart' as _i35;
import '../domain/repositories/login_repository.dart' as _i7;
import '../domain/repositories/register_repository.dart' as _i13;
import '../domain/repositories/resend_code_repository.dart' as _i18;
import '../domain/repositories/resend_password_repository.dart' as _i23;
import '../domain/usecases/create_new_password_usecase.dart' as _i31;
import '../domain/usecases/get_place_detail_usecase.dart' as _i44;
import '../domain/usecases/get_places_usecase.dart' as _i34;
import '../domain/usecases/get_roles_usecase.dart' as _i37;
import '../domain/usecases/login_usecase.dart' as _i9;
import '../domain/usecases/register_usecase.dart' as _i15;
import '../domain/usecases/resend_code_usecase.dart' as _i20;
import '../domain/usecases/resend_password_usecase.dart' as _i25;
import '../presentation/blocs/create_new_password/create_new_password_bloc.dart'
    as _i43;
import '../presentation/blocs/create_new_password/create_new_password_cubit.dart'
    as _i3;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i45;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i46;
import '../presentation/blocs/login/login_bloc.dart' as _i38;
import '../presentation/blocs/login/login_cubit.dart' as _i5;
import '../presentation/blocs/register/register_bloc.dart' as _i39;
import '../presentation/blocs/register/register_cubit.dart' as _i11;
import '../presentation/blocs/resend_code/resend_code_bloc.dart' as _i40;
import '../presentation/blocs/resend_code/resend_code_cubit.dart' as _i16;
import '../presentation/blocs/resend_password/resend_password_bloc.dart'
    as _i41;
import '../presentation/blocs/resend_password/resend_password_cubit.dart'
    as _i21;
import 'register_module.dart' as _i47;

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
    gh.factory<_i5.LoginCubit>(() => _i5.LoginCubit());
    gh.factory<_i6.LoginDataSource>(
        () => _i6.LoginDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i7.LoginRepository>(() =>
        _i8.LoginRepositoryImpl(loginDataSource: gh<_i6.LoginDataSource>()));
    gh.singleton<_i9.LoginUseCase>(
        _i9.LoginUseCase(repository: gh<_i7.LoginRepository>()));
    gh.factory<_i10.PlacesDataSource>(
        () => _i10.PlacesDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i11.RegisterCubit>(() => _i11.RegisterCubit());
    gh.factory<_i12.RegisterDataSource>(
        () => _i12.RegisterDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i13.RegisterRepository>(() =>
        _i14.RegisterRepositoryImpl(dataSource: gh<_i12.RegisterDataSource>()));
    gh.singleton<_i15.RegisterUseCase>(
        _i15.RegisterUseCase(repository: gh<_i13.RegisterRepository>()));
    gh.factory<_i16.ResendCodeCubit>(() => _i16.ResendCodeCubit());
    gh.factory<_i17.ResendCodeDataSource>(
        () => _i17.ResendCodeDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i18.ResendCodeRepository>(() => _i19.ResendCodeRepositoryImpl(
        resendCodeDataSource: gh<_i17.ResendCodeDataSource>()));
    gh.singleton<_i20.ResendCodeUseCase>(
        _i20.ResendCodeUseCase(repository: gh<_i18.ResendCodeRepository>()));
    gh.factory<_i21.ResendPasswordCubit>(() => _i21.ResendPasswordCubit());
    gh.factory<_i22.ResendPasswordDataSource>(
        () => _i22.ResendPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i23.ResendPasswordRepository>(() =>
        _i24.ResendPasswordRepositoryImpl(
            dataSource: gh<_i22.ResendPasswordDataSource>()));
    gh.singleton<_i25.ResendPasswordUseCase>(_i25.ResendPasswordUseCase(
        repository: gh<_i23.ResendPasswordRepository>()));
    gh.factory<_i26.RolesDataSource>(
        () => _i26.RolesDataSource.create(gh<_i4.Dio>()));
    await gh.factoryAsync<_i27.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i28.CreateNewPasswordDataSource>(
        () => _i28.CreateNewPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i29.CreateNewPasswordRepository>(() =>
        _i30.CreateNewPasswordRepositoryImpl(
            createNewPasswordDataSource:
                gh<_i28.CreateNewPasswordDataSource>()));
    gh.singleton<_i31.CreateNewPasswordUseCase>(_i31.CreateNewPasswordUseCase(
        repository: gh<_i29.CreateNewPasswordRepository>()));
    gh.factory<_i32.GetPlacesRepository>(() =>
        _i33.GetPlacesRepositoryImpl(dataSource: gh<_i10.PlacesDataSource>()));
    gh.singleton<_i34.GetPlacesUseCase>(
        _i34.GetPlacesUseCase(repository: gh<_i32.GetPlacesRepository>()));
    gh.factory<_i35.GetRolesRepository>(() =>
        _i36.RoleRepositoryImpl(rolesDataSource: gh<_i26.RolesDataSource>()));
    gh.singleton<_i37.GetRolesUseCase>(
        _i37.GetRolesUseCase(rolesRepository: gh<_i35.GetRolesRepository>()));
    gh.factory<_i38.LoginBloc>(
        () => _i38.LoginBloc(useCase: gh<_i9.LoginUseCase>()));
    gh.factory<_i39.RegisterBloc>(() => _i39.RegisterBloc(
          useCase: gh<_i15.RegisterUseCase>(),
          loginUseCase: gh<_i9.LoginUseCase>(),
        ));
    gh.factory<_i40.ResendCodeBloc>(() => _i40.ResendCodeBloc(
          loginUseCase: gh<_i9.LoginUseCase>(),
          resendCodeUseCase: gh<_i20.ResendCodeUseCase>(),
        ));
    gh.factory<_i41.ResendPasswordBloc>(() => _i41.ResendPasswordBloc(
          loginUseCase: gh<_i9.LoginUseCase>(),
          resendPasswordUseCase: gh<_i25.ResendPasswordUseCase>(),
        ));
    gh.singleton<_i42.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i27.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.factory<_i43.CreateNewPasswordBloc>(() => _i43.CreateNewPasswordBloc(
          createNewPasswordUseCase: gh<_i31.CreateNewPasswordUseCase>(),
          loginUseCase: gh<_i9.LoginUseCase>(),
        ));
    gh.singleton<_i44.GetPlaceDetailUseCase>(
        _i44.GetPlaceDetailUseCase(repository: gh<_i32.GetPlacesRepository>()));
    gh.factory<_i45.GetPlacesBloc>(() => _i45.GetPlacesBloc(
          useCase: gh<_i34.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i44.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i46.GetRolesBloc>(() => _i46.GetRolesBloc(
          getRolesUseCase: gh<_i37.GetRolesUseCase>(),
          loginUseCase: gh<_i9.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i47.RegisterModule {}

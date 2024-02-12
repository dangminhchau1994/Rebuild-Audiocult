// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i26;

import '../core/utils/share_preferences_util.dart' as _i41;
import '../data/datasources/create_new_password_datasource.dart' as _i27;
import '../data/datasources/login_data_source.dart' as _i5;
import '../data/datasources/places_data_source.dart' as _i9;
import '../data/datasources/register_data_source.dart' as _i11;
import '../data/datasources/resend_code_data_source.dart' as _i16;
import '../data/datasources/resend_password_data_source.dart' as _i21;
import '../data/datasources/roles_data_source.dart' as _i25;
import '../data/repositories/create_new_password_repository_impl.dart' as _i29;
import '../data/repositories/login_repository_impl.dart' as _i7;
import '../data/repositories/places_repository_impl.dart' as _i32;
import '../data/repositories/register_repository_impl.dart' as _i13;
import '../data/repositories/resend_code_repository_impl.dart' as _i18;
import '../data/repositories/resend_password_repository_impl.dart' as _i23;
import '../data/repositories/role_repository_impl.dart' as _i35;
import '../domain/repositories/create_new_password_repository.dart' as _i28;
import '../domain/repositories/get_places_repository.dart' as _i31;
import '../domain/repositories/get_roles_repository.dart' as _i34;
import '../domain/repositories/login_repository.dart' as _i6;
import '../domain/repositories/register_repository.dart' as _i12;
import '../domain/repositories/resend_code_repository.dart' as _i17;
import '../domain/repositories/resend_password_repository.dart' as _i22;
import '../domain/usecases/create_new_password_usecase.dart' as _i30;
import '../domain/usecases/get_place_detail_usecase.dart' as _i42;
import '../domain/usecases/get_places_usecase.dart' as _i33;
import '../domain/usecases/get_roles_usecase.dart' as _i36;
import '../domain/usecases/login_usecase.dart' as _i8;
import '../domain/usecases/register_usecase.dart' as _i14;
import '../domain/usecases/resend_code_usecase.dart' as _i19;
import '../domain/usecases/resend_password_usecase.dart' as _i24;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i43;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i44;
import '../presentation/blocs/login/login_bloc.dart' as _i37;
import '../presentation/blocs/login/login_cubit.dart' as _i4;
import '../presentation/blocs/register/register_bloc.dart' as _i38;
import '../presentation/blocs/register/register_cubit.dart' as _i10;
import '../presentation/blocs/resend_code/resend_code_bloc.dart' as _i39;
import '../presentation/blocs/resend_code/resend_code_cubit.dart' as _i15;
import '../presentation/blocs/resend_password/resend_password_bloc.dart'
    as _i40;
import '../presentation/blocs/resend_password/resend_password_cubit.dart'
    as _i20;
import 'register_module.dart' as _i45;

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
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio());
    gh.factory<_i4.LoginCubit>(() => _i4.LoginCubit());
    gh.factory<_i5.LoginDataSource>(
        () => _i5.LoginDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i6.LoginRepository>(() =>
        _i7.LoginRepositoryImpl(loginDataSource: gh<_i5.LoginDataSource>()));
    gh.singleton<_i8.LoginUseCase>(
        _i8.LoginUseCase(repository: gh<_i6.LoginRepository>()));
    gh.factory<_i9.PlacesDataSource>(
        () => _i9.PlacesDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i10.RegisterCubit>(() => _i10.RegisterCubit());
    gh.factory<_i11.RegisterDataSource>(
        () => _i11.RegisterDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i12.RegisterRepository>(() =>
        _i13.RegisterRepositoryImpl(dataSource: gh<_i11.RegisterDataSource>()));
    gh.singleton<_i14.RegisterUseCase>(
        _i14.RegisterUseCase(repository: gh<_i12.RegisterRepository>()));
    gh.factory<_i15.ResendCodeCubit>(() => _i15.ResendCodeCubit());
    gh.factory<_i16.ResendCodeDataSource>(
        () => _i16.ResendCodeDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i17.ResendCodeRepository>(() => _i18.ResendCodeRepositoryImpl(
        resendCodeDataSource: gh<_i16.ResendCodeDataSource>()));
    gh.singleton<_i19.ResendCodeUseCase>(
        _i19.ResendCodeUseCase(repository: gh<_i17.ResendCodeRepository>()));
    gh.factory<_i20.ResendPasswordCubit>(() => _i20.ResendPasswordCubit());
    gh.factory<_i21.ResendPasswordDataSource>(
        () => _i21.ResendPasswordDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i22.ResendPasswordRepository>(() =>
        _i23.ResendPasswordRepositoryImpl(
            dataSource: gh<_i21.ResendPasswordDataSource>()));
    gh.singleton<_i24.ResendPasswordUseCase>(_i24.ResendPasswordUseCase(
        repository: gh<_i22.ResendPasswordRepository>()));
    gh.factory<_i25.RolesDataSource>(
        () => _i25.RolesDataSource.create(gh<_i3.Dio>()));
    await gh.factoryAsync<_i26.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i27.CreateNewPasswordDataSource>(
        () => _i27.CreateNewPasswordDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i28.CreateNewPasswordRepository>(() =>
        _i29.CreateNewPasswordRepositoryImpl(
            createNewPasswordDataSource:
                gh<_i27.CreateNewPasswordDataSource>()));
    gh.singleton<_i30.CreateNewPasswordUseCase>(_i30.CreateNewPasswordUseCase(
        repository: gh<_i28.CreateNewPasswordRepository>()));
    gh.factory<_i31.GetPlacesRepository>(() =>
        _i32.GetPlacesRepositoryImpl(dataSource: gh<_i9.PlacesDataSource>()));
    gh.singleton<_i33.GetPlacesUseCase>(
        _i33.GetPlacesUseCase(repository: gh<_i31.GetPlacesRepository>()));
    gh.factory<_i34.GetRolesRepository>(() =>
        _i35.RoleRepositoryImpl(rolesDataSource: gh<_i25.RolesDataSource>()));
    gh.singleton<_i36.GetRolesUseCase>(
        _i36.GetRolesUseCase(rolesRepository: gh<_i34.GetRolesRepository>()));
    gh.factory<_i37.LoginBloc>(
        () => _i37.LoginBloc(useCase: gh<_i8.LoginUseCase>()));
    gh.factory<_i38.RegisterBloc>(() => _i38.RegisterBloc(
          useCase: gh<_i14.RegisterUseCase>(),
          loginUseCase: gh<_i8.LoginUseCase>(),
        ));
    gh.factory<_i39.ResendCodeBloc>(() => _i39.ResendCodeBloc(
          loginUseCase: gh<_i8.LoginUseCase>(),
          resendCodeUseCase: gh<_i19.ResendCodeUseCase>(),
        ));
    gh.factory<_i40.ResendPasswordBloc>(() => _i40.ResendPasswordBloc(
          loginUseCase: gh<_i8.LoginUseCase>(),
          resendPasswordUseCase: gh<_i24.ResendPasswordUseCase>(),
        ));
    gh.singleton<_i41.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i26.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.singleton<_i42.GetPlaceDetailUseCase>(
        _i42.GetPlaceDetailUseCase(repository: gh<_i31.GetPlacesRepository>()));
    gh.factory<_i43.GetPlacesBloc>(() => _i43.GetPlacesBloc(
          useCase: gh<_i33.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i42.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i44.GetRolesBloc>(() => _i44.GetRolesBloc(
          getRolesUseCase: gh<_i36.GetRolesUseCase>(),
          loginUseCase: gh<_i8.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i45.RegisterModule {}

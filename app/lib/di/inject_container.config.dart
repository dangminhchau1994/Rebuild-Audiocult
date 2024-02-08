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
import 'package:shared_preferences/shared_preferences.dart' as _i20;

import '../core/utils/share_preferences_util.dart' as _i29;
import '../data/datasources/login_data_source.dart' as _i5;
import '../data/datasources/places_data_source.dart' as _i9;
import '../data/datasources/register_data_source.dart' as _i11;
import '../data/datasources/resend_password_data_source.dart' as _i15;
import '../data/datasources/roles_data_source.dart' as _i19;
import '../data/repositories/login_repository_impl.dart' as _i7;
import '../data/repositories/places_repository_impl.dart' as _i22;
import '../data/repositories/register_repository_impl.dart' as _i13;
import '../data/repositories/resend_password_repository_impl.dart' as _i17;
import '../data/repositories/role_repository_impl.dart' as _i25;
import '../domain/repositories/get_places_repository.dart' as _i21;
import '../domain/repositories/get_roles_repository.dart' as _i24;
import '../domain/repositories/login_repository.dart' as _i6;
import '../domain/repositories/register_repository.dart' as _i12;
import '../domain/repositories/resend_password_repository.dart' as _i16;
import '../domain/usecases/get_place_detail_usecase.dart' as _i30;
import '../domain/usecases/get_places_usecase.dart' as _i23;
import '../domain/usecases/get_roles_usecase.dart' as _i26;
import '../domain/usecases/login_usecase.dart' as _i8;
import '../domain/usecases/register_usecase.dart' as _i14;
import '../domain/usecases/resend_password_usecase.dart' as _i18;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i31;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i32;
import '../presentation/blocs/login/login_bloc.dart' as _i27;
import '../presentation/blocs/login/login_cubit.dart' as _i4;
import '../presentation/blocs/register/register_bloc.dart' as _i28;
import '../presentation/blocs/register/register_cubit.dart' as _i10;
import 'register_module.dart' as _i33;

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
    gh.factory<_i15.ResendPasswordDataSource>(
        () => _i15.ResendPasswordDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i16.ResendPasswordRepository>(() =>
        _i17.ResendPasswordRepositoryImpl(
            dataSource: gh<_i15.ResendPasswordDataSource>()));
    gh.singleton<_i18.ResendPasswordUseCase>(_i18.ResendPasswordUseCase(
        repository: gh<_i16.ResendPasswordRepository>()));
    gh.factory<_i19.RolesDataSource>(
        () => _i19.RolesDataSource.create(gh<_i3.Dio>()));
    await gh.factoryAsync<_i20.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i21.GetPlacesRepository>(() =>
        _i22.GetPlacesRepositoryImpl(dataSource: gh<_i9.PlacesDataSource>()));
    gh.singleton<_i23.GetPlacesUseCase>(
        _i23.GetPlacesUseCase(repository: gh<_i21.GetPlacesRepository>()));
    gh.factory<_i24.GetRolesRepository>(() =>
        _i25.RoleRepositoryImpl(rolesDataSource: gh<_i19.RolesDataSource>()));
    gh.singleton<_i26.GetRolesUseCase>(
        _i26.GetRolesUseCase(rolesRepository: gh<_i24.GetRolesRepository>()));
    gh.factory<_i27.LoginBloc>(
        () => _i27.LoginBloc(useCase: gh<_i8.LoginUseCase>()));
    gh.factory<_i28.RegisterBloc>(() => _i28.RegisterBloc(
          useCase: gh<_i14.RegisterUseCase>(),
          loginUseCase: gh<_i8.LoginUseCase>(),
        ));
    gh.singleton<_i29.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i20.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.singleton<_i30.GetPlaceDetailUseCase>(
        _i30.GetPlaceDetailUseCase(repository: gh<_i21.GetPlacesRepository>()));
    gh.factory<_i31.GetPlacesBloc>(() => _i31.GetPlacesBloc(
          useCase: gh<_i23.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i30.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i32.GetRolesBloc>(() => _i32.GetRolesBloc(
          getRolesUseCase: gh<_i26.GetRolesUseCase>(),
          loginUseCase: gh<_i8.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i33.RegisterModule {}

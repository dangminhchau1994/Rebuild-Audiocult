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
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import '../core/utils/share_preferences_util.dart' as _i25;
import '../data/datasources/login_data_source.dart' as _i5;
import '../data/datasources/places_data_source.dart' as _i9;
import '../data/datasources/register_data_source.dart' as _i11;
import '../data/datasources/roles_data_source.dart' as _i15;
import '../data/repositories/login_repository_impl.dart' as _i7;
import '../data/repositories/places_repository_impl.dart' as _i18;
import '../data/repositories/register_repository_impl.dart' as _i13;
import '../data/repositories/role_repository_impl.dart' as _i21;
import '../domain/repositories/get_places_repository.dart' as _i17;
import '../domain/repositories/get_roles_repository.dart' as _i20;
import '../domain/repositories/login_repository.dart' as _i6;
import '../domain/repositories/register_repository.dart' as _i12;
import '../domain/usecases/get_place_detail_usecase.dart' as _i26;
import '../domain/usecases/get_places_usecase.dart' as _i19;
import '../domain/usecases/get_roles_usecase.dart' as _i22;
import '../domain/usecases/login_usecase.dart' as _i8;
import '../domain/usecases/register_usecase.dart' as _i14;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i27;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i28;
import '../presentation/blocs/login/login_bloc.dart' as _i23;
import '../presentation/blocs/login/login_cubit.dart' as _i4;
import '../presentation/blocs/register/register_bloc.dart' as _i24;
import '../presentation/blocs/register/register_cubit.dart' as _i10;
import 'register_module.dart' as _i29;

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
    gh.factory<_i15.RolesDataSource>(
        () => _i15.RolesDataSource.create(gh<_i3.Dio>()));
    await gh.factoryAsync<_i16.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i17.GetPlacesRepository>(() =>
        _i18.GetPlacesRepositoryImpl(dataSource: gh<_i9.PlacesDataSource>()));
    gh.singleton<_i19.GetPlacesUseCase>(
        _i19.GetPlacesUseCase(repository: gh<_i17.GetPlacesRepository>()));
    gh.factory<_i20.GetRolesRepository>(() =>
        _i21.RoleRepositoryImpl(rolesDataSource: gh<_i15.RolesDataSource>()));
    gh.singleton<_i22.GetRolesUseCase>(
        _i22.GetRolesUseCase(rolesRepository: gh<_i20.GetRolesRepository>()));
    gh.factory<_i23.LoginBloc>(
        () => _i23.LoginBloc(useCase: gh<_i8.LoginUseCase>()));
    gh.factory<_i24.RegisterBloc>(() => _i24.RegisterBloc(
          useCase: gh<_i14.RegisterUseCase>(),
          loginUseCase: gh<_i8.LoginUseCase>(),
        ));
    gh.singleton<_i25.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i16.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.singleton<_i26.GetPlaceDetailUseCase>(
        _i26.GetPlaceDetailUseCase(repository: gh<_i17.GetPlacesRepository>()));
    gh.factory<_i27.GetPlacesBloc>(() => _i27.GetPlacesBloc(
          useCase: gh<_i19.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i26.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i28.GetRolesBloc>(() => _i28.GetRolesBloc(
          getRolesUseCase: gh<_i22.GetRolesUseCase>(),
          loginUseCase: gh<_i8.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i29.RegisterModule {}

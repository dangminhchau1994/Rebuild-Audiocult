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

import '../data/datasources/login_data_source.dart' as _i4;
import '../data/datasources/places_data_source.dart' as _i8;
import '../data/datasources/roles_data_source.dart' as _i10;
import '../data/repositories/login_repository_impl.dart' as _i6;
import '../data/repositories/places_repository_impl.dart' as _i12;
import '../data/repositories/role_repository_impl.dart' as _i15;
import '../domain/repositories/get_places_repository.dart' as _i11;
import '../domain/repositories/get_roles_repository.dart' as _i14;
import '../domain/repositories/login_repository.dart' as _i5;
import '../domain/usecases/get_place_detail_usecase.dart' as _i18;
import '../domain/usecases/get_places_usecase.dart' as _i13;
import '../domain/usecases/get_roles_usecase.dart' as _i16;
import '../domain/usecases/login_usecase.dart' as _i7;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i19;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i20;
import '../presentation/blocs/login/login_bloc.dart' as _i17;
import '../presentation/blocs/register/register_cubit.dart' as _i9;
import 'register_module.dart' as _i21;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio());
    gh.factory<_i4.LoginDataSource>(
        () => _i4.LoginDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i5.LoginRepository>(() =>
        _i6.LoginRepositoryImpl(loginDataSource: gh<_i4.LoginDataSource>()));
    gh.singleton<_i7.LoginUseCase>(
        _i7.LoginUseCase(repository: gh<_i5.LoginRepository>()));
    gh.factory<_i8.PlacesDataSource>(
        () => _i8.PlacesDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i9.RegisterCubit>(() => _i9.RegisterCubit());
    gh.factory<_i10.RolesDataSource>(
        () => _i10.RolesDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i11.GetPlacesRepository>(() =>
        _i12.GetPlacesRepositoryImpl(dataSource: gh<_i8.PlacesDataSource>()));
    gh.singleton<_i13.GetPlacesUseCase>(
        _i13.GetPlacesUseCase(repository: gh<_i11.GetPlacesRepository>()));
    gh.factory<_i14.GetRolesRepository>(() =>
        _i15.RoleRepositoryImpl(rolesDataSource: gh<_i10.RolesDataSource>()));
    gh.singleton<_i16.GetRolesUseCase>(
        _i16.GetRolesUseCase(rolesRepository: gh<_i14.GetRolesRepository>()));
    gh.factory<_i17.LoginBloc>(
        () => _i17.LoginBloc(useCase: gh<_i7.LoginUseCase>()));
    gh.singleton<_i18.GetPlaceDetailUseCase>(
        _i18.GetPlaceDetailUseCase(repository: gh<_i11.GetPlacesRepository>()));
    gh.factory<_i19.GetPlacesBloc>(() => _i19.GetPlacesBloc(
          useCase: gh<_i13.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i18.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i20.GetRolesBloc>(() => _i20.GetRolesBloc(
          getRolesUseCase: gh<_i16.GetRolesUseCase>(),
          loginUseCase: gh<_i7.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i21.RegisterModule {}

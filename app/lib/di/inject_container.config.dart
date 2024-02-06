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
import '../data/datasources/register_data_source.dart' as _i10;
import '../data/datasources/roles_data_source.dart' as _i14;
import '../data/repositories/login_repository_impl.dart' as _i6;
import '../data/repositories/places_repository_impl.dart' as _i16;
import '../data/repositories/register_repository_impl.dart' as _i12;
import '../data/repositories/role_repository_impl.dart' as _i19;
import '../domain/repositories/get_places_repository.dart' as _i15;
import '../domain/repositories/get_roles_repository.dart' as _i18;
import '../domain/repositories/login_repository.dart' as _i5;
import '../domain/repositories/register_repository.dart' as _i11;
import '../domain/usecases/get_place_detail_usecase.dart' as _i23;
import '../domain/usecases/get_places_usecase.dart' as _i17;
import '../domain/usecases/get_roles_usecase.dart' as _i20;
import '../domain/usecases/login_usecase.dart' as _i7;
import '../domain/usecases/register_usecase.dart' as _i13;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i24;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i25;
import '../presentation/blocs/login/login_bloc.dart' as _i21;
import '../presentation/blocs/register/register_bloc.dart' as _i22;
import '../presentation/blocs/register/register_cubit.dart' as _i9;
import 'register_module.dart' as _i26;

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
    gh.factory<_i10.RegisterDataSource>(
        () => _i10.RegisterDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i11.RegisterRepository>(() =>
        _i12.RegisterRepositoryImpl(dataSource: gh<_i10.RegisterDataSource>()));
    gh.singleton<_i13.RegisterUseCase>(
        _i13.RegisterUseCase(repository: gh<_i11.RegisterRepository>()));
    gh.factory<_i14.RolesDataSource>(
        () => _i14.RolesDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i15.GetPlacesRepository>(() =>
        _i16.GetPlacesRepositoryImpl(dataSource: gh<_i8.PlacesDataSource>()));
    gh.singleton<_i17.GetPlacesUseCase>(
        _i17.GetPlacesUseCase(repository: gh<_i15.GetPlacesRepository>()));
    gh.factory<_i18.GetRolesRepository>(() =>
        _i19.RoleRepositoryImpl(rolesDataSource: gh<_i14.RolesDataSource>()));
    gh.singleton<_i20.GetRolesUseCase>(
        _i20.GetRolesUseCase(rolesRepository: gh<_i18.GetRolesRepository>()));
    gh.factory<_i21.LoginBloc>(
        () => _i21.LoginBloc(useCase: gh<_i7.LoginUseCase>()));
    gh.factory<_i22.RegisterBloc>(() => _i22.RegisterBloc(
          useCase: gh<_i13.RegisterUseCase>(),
          loginUseCase: gh<_i7.LoginUseCase>(),
        ));
    gh.singleton<_i23.GetPlaceDetailUseCase>(
        _i23.GetPlaceDetailUseCase(repository: gh<_i15.GetPlacesRepository>()));
    gh.factory<_i24.GetPlacesBloc>(() => _i24.GetPlacesBloc(
          useCase: gh<_i17.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i23.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i25.GetRolesBloc>(() => _i25.GetRolesBloc(
          getRolesUseCase: gh<_i20.GetRolesUseCase>(),
          loginUseCase: gh<_i7.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i26.RegisterModule {}

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

import '../core/services/register_module.dart' as _i9;
import '../data/datasources/roles_data_source.dart' as _i4;
import '../data/repositories/role_repository_impl.dart' as _i6;
import '../domain/repositories/get_roles_repository.dart' as _i5;
import '../domain/usecases/get_roles_usecase.dart' as _i7;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i8;

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
    gh.factory<_i4.RolesDataSource>(
        () => _i4.RolesDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i5.GetRolesRepository>(() =>
        _i6.RoleRepositoryImpl(rolesDataSource: gh<_i4.RolesDataSource>()));
    gh.singleton<_i7.GetRolesUseCase>(
        _i7.GetRolesUseCase(rolesRepository: gh<_i5.GetRolesRepository>()));
    gh.factory<_i8.GetRolesBloc>(
        () => _i8.GetRolesBloc(useCase: gh<_i7.GetRolesUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}

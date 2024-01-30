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
import '../data/datasources/roles_data_source.dart' as _i8;
import '../data/repositories/login_repository_impl.dart' as _i6;
import '../data/repositories/role_repository_impl.dart' as _i10;
import '../domain/repositories/get_roles_repository.dart' as _i9;
import '../domain/repositories/login_repository.dart' as _i5;
import '../domain/usecases/get_roles_usecase.dart' as _i11;
import '../domain/usecases/login_usecase.dart' as _i7;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i13;
import '../presentation/blocs/login/login_bloc.dart' as _i12;
import 'register_module.dart' as _i14;

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
    gh.factory<_i8.RolesDataSource>(
        () => _i8.RolesDataSource.create(gh<_i3.Dio>()));
    gh.factory<_i9.GetRolesRepository>(() =>
        _i10.RoleRepositoryImpl(rolesDataSource: gh<_i8.RolesDataSource>()));
    gh.singleton<_i11.GetRolesUseCase>(
        _i11.GetRolesUseCase(rolesRepository: gh<_i9.GetRolesRepository>()));
    gh.factory<_i12.LoginBloc>(
        () => _i12.LoginBloc(useCase: gh<_i7.LoginUseCase>()));
    gh.factory<_i13.GetRolesBloc>(() => _i13.GetRolesBloc(
          getRolesUseCase: gh<_i11.GetRolesUseCase>(),
          loginUseCase: gh<_i7.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}

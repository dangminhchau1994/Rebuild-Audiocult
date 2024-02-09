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

import '../core/utils/share_preferences_util.dart' as _i37;
import '../data/datasources/login_data_source.dart' as _i5;
import '../data/datasources/places_data_source.dart' as _i9;
import '../data/datasources/register_data_source.dart' as _i11;
import '../data/datasources/resend_code_data_source.dart' as _i16;
import '../data/datasources/resend_password_data_source.dart' as _i21;
import '../data/datasources/roles_data_source.dart' as _i25;
import '../data/repositories/login_repository_impl.dart' as _i7;
import '../data/repositories/places_repository_impl.dart' as _i28;
import '../data/repositories/register_repository_impl.dart' as _i13;
import '../data/repositories/resend_code_repository_impl.dart' as _i18;
import '../data/repositories/resend_password_repository_impl.dart' as _i23;
import '../data/repositories/role_repository_impl.dart' as _i31;
import '../domain/repositories/get_places_repository.dart' as _i27;
import '../domain/repositories/get_roles_repository.dart' as _i30;
import '../domain/repositories/login_repository.dart' as _i6;
import '../domain/repositories/register_repository.dart' as _i12;
import '../domain/repositories/resend_code_repository.dart' as _i17;
import '../domain/repositories/resend_password_repository.dart' as _i22;
import '../domain/usecases/get_place_detail_usecase.dart' as _i38;
import '../domain/usecases/get_places_usecase.dart' as _i29;
import '../domain/usecases/get_roles_usecase.dart' as _i32;
import '../domain/usecases/login_usecase.dart' as _i8;
import '../domain/usecases/register_usecase.dart' as _i14;
import '../domain/usecases/resend_code_usecase.dart' as _i19;
import '../domain/usecases/resend_password_usecase.dart' as _i24;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i39;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i40;
import '../presentation/blocs/login/login_bloc.dart' as _i33;
import '../presentation/blocs/login/login_cubit.dart' as _i4;
import '../presentation/blocs/register/register_bloc.dart' as _i34;
import '../presentation/blocs/register/register_cubit.dart' as _i10;
import '../presentation/blocs/resend_code/resend_code_bloc.dart' as _i35;
import '../presentation/blocs/resend_code/resend_code_cubit.dart' as _i15;
import '../presentation/blocs/resend_password/resend_password_bloc.dart'
    as _i36;
import '../presentation/blocs/resend_password/resend_password_cubit.dart'
    as _i20;
import 'register_module.dart' as _i41;

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
    gh.factory<_i27.GetPlacesRepository>(() =>
        _i28.GetPlacesRepositoryImpl(dataSource: gh<_i9.PlacesDataSource>()));
    gh.singleton<_i29.GetPlacesUseCase>(
        _i29.GetPlacesUseCase(repository: gh<_i27.GetPlacesRepository>()));
    gh.factory<_i30.GetRolesRepository>(() =>
        _i31.RoleRepositoryImpl(rolesDataSource: gh<_i25.RolesDataSource>()));
    gh.singleton<_i32.GetRolesUseCase>(
        _i32.GetRolesUseCase(rolesRepository: gh<_i30.GetRolesRepository>()));
    gh.factory<_i33.LoginBloc>(
        () => _i33.LoginBloc(useCase: gh<_i8.LoginUseCase>()));
    gh.factory<_i34.RegisterBloc>(() => _i34.RegisterBloc(
          useCase: gh<_i14.RegisterUseCase>(),
          loginUseCase: gh<_i8.LoginUseCase>(),
        ));
    gh.factory<_i35.ResendCodeBloc>(() => _i35.ResendCodeBloc(
          loginUseCase: gh<_i8.LoginUseCase>(),
          resendCodeUseCase: gh<_i19.ResendCodeUseCase>(),
        ));
    gh.factory<_i36.ResendPasswordBloc>(() => _i36.ResendPasswordBloc(
          loginUseCase: gh<_i8.LoginUseCase>(),
          resendPasswordUseCase: gh<_i24.ResendPasswordUseCase>(),
        ));
    gh.singleton<_i37.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i26.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.singleton<_i38.GetPlaceDetailUseCase>(
        _i38.GetPlaceDetailUseCase(repository: gh<_i27.GetPlacesRepository>()));
    gh.factory<_i39.GetPlacesBloc>(() => _i39.GetPlacesBloc(
          useCase: gh<_i29.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i38.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i40.GetRolesBloc>(() => _i40.GetRolesBloc(
          getRolesUseCase: gh<_i32.GetRolesUseCase>(),
          loginUseCase: gh<_i8.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i41.RegisterModule {}

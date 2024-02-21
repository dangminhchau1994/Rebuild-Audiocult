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
import 'package:shared_preferences/shared_preferences.dart' as _i35;

import '../core/services/hive_service.dart' as _i8;
import '../core/utils/share_preferences_util.dart' as _i54;
import '../data/datasources/create_new_password_datasource.dart' as _i36;
import '../data/datasources/get_profile_datasource.dart' as _i7;
import '../data/datasources/login_data_source.dart' as _i10;
import '../data/datasources/logout_data_source.dart' as _i14;
import '../data/datasources/places_data_source.dart' as _i18;
import '../data/datasources/register_data_source.dart' as _i20;
import '../data/datasources/resend_code_data_source.dart' as _i25;
import '../data/datasources/resend_password_data_source.dart' as _i30;
import '../data/datasources/roles_data_source.dart' as _i34;
import '../data/repositories/create_new_password_repository_impl.dart' as _i38;
import '../data/repositories/get_profile_repository_impl.dart' as _i44;
import '../data/repositories/login_repository_impl.dart' as _i12;
import '../data/repositories/logout_repository_impl.dart' as _i16;
import '../data/repositories/places_repository_impl.dart' as _i41;
import '../data/repositories/register_repository_impl.dart' as _i22;
import '../data/repositories/resend_code_repository_impl.dart' as _i27;
import '../data/repositories/resend_password_repository_impl.dart' as _i32;
import '../data/repositories/role_repository_impl.dart' as _i47;
import '../domain/repositories/create_new_password_repository.dart' as _i37;
import '../domain/repositories/get_feeds_repository.dart' as _i6;
import '../domain/repositories/get_places_repository.dart' as _i40;
import '../domain/repositories/get_profile_repository.dart' as _i43;
import '../domain/repositories/get_roles_repository.dart' as _i46;
import '../domain/repositories/login_repository.dart' as _i11;
import '../domain/repositories/logout_repository.dart' as _i15;
import '../domain/repositories/register_repository.dart' as _i21;
import '../domain/repositories/resend_code_repository.dart' as _i26;
import '../domain/repositories/resend_password_repository.dart' as _i31;
import '../domain/usecases/create_new_password_usecase.dart' as _i39;
import '../domain/usecases/get_feeds_usecase.dart' as _i5;
import '../domain/usecases/get_place_detail_usecase.dart' as _i56;
import '../domain/usecases/get_places_usecase.dart' as _i42;
import '../domain/usecases/get_profile_usecase.dart' as _i45;
import '../domain/usecases/get_roles_usecase.dart' as _i48;
import '../domain/usecases/login_usecase.dart' as _i13;
import '../domain/usecases/logout_usecase.dart' as _i17;
import '../domain/usecases/register_usecase.dart' as _i23;
import '../domain/usecases/resend_code_usecase.dart' as _i28;
import '../domain/usecases/resend_password_usecase.dart' as _i33;
import '../presentation/blocs/create_new_password/create_new_password_bloc.dart'
    as _i55;
import '../presentation/blocs/create_new_password/create_new_password_cubit.dart'
    as _i3;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i57;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i59;
import '../presentation/blocs/login/login_bloc.dart' as _i49;
import '../presentation/blocs/login/login_cubit.dart' as _i9;
import '../presentation/blocs/logout/logout_bloc.dart' as _i50;
import '../presentation/blocs/profile/get_profile_bloc.dart' as _i58;
import '../presentation/blocs/register/register_bloc.dart' as _i51;
import '../presentation/blocs/register/register_cubit.dart' as _i19;
import '../presentation/blocs/resend_code/resend_code_bloc.dart' as _i52;
import '../presentation/blocs/resend_code/resend_code_cubit.dart' as _i24;
import '../presentation/blocs/resend_password/resend_password_bloc.dart'
    as _i53;
import '../presentation/blocs/resend_password/resend_password_cubit.dart'
    as _i29;
import 'register_module.dart' as _i60;

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
    gh.singleton<_i5.GetFeedsUseCase>(
        _i5.GetFeedsUseCase(repository: gh<_i6.GetFeedsRepository>()));
    gh.factory<_i7.GetProfileDataSource>(
        () => _i7.GetProfileDataSource.create(gh<_i4.Dio>()));
    gh.singleton<_i8.HiveService>(registerModule.hiveService);
    gh.factory<_i9.LoginCubit>(() => _i9.LoginCubit());
    gh.factory<_i10.LoginDataSource>(
        () => _i10.LoginDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i11.LoginRepository>(() =>
        _i12.LoginRepositoryImpl(loginDataSource: gh<_i10.LoginDataSource>()));
    gh.singleton<_i13.LoginUseCase>(
        _i13.LoginUseCase(repository: gh<_i11.LoginRepository>()));
    gh.factory<_i14.LogoutDataSource>(
        () => _i14.LogoutDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i15.LogoutRepository>(() =>
        _i16.LogoutRepositoryImpl(dataSource: gh<_i14.LogoutDataSource>()));
    gh.singleton<_i17.LogoutUsecase>(
        _i17.LogoutUsecase(repository: gh<_i15.LogoutRepository>()));
    gh.factory<_i18.PlacesDataSource>(
        () => _i18.PlacesDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i19.RegisterCubit>(() => _i19.RegisterCubit());
    gh.factory<_i20.RegisterDataSource>(
        () => _i20.RegisterDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i21.RegisterRepository>(() =>
        _i22.RegisterRepositoryImpl(dataSource: gh<_i20.RegisterDataSource>()));
    gh.singleton<_i23.RegisterUseCase>(
        _i23.RegisterUseCase(repository: gh<_i21.RegisterRepository>()));
    gh.factory<_i24.ResendCodeCubit>(() => _i24.ResendCodeCubit());
    gh.factory<_i25.ResendCodeDataSource>(
        () => _i25.ResendCodeDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i26.ResendCodeRepository>(() => _i27.ResendCodeRepositoryImpl(
        resendCodeDataSource: gh<_i25.ResendCodeDataSource>()));
    gh.singleton<_i28.ResendCodeUseCase>(
        _i28.ResendCodeUseCase(repository: gh<_i26.ResendCodeRepository>()));
    gh.factory<_i29.ResendPasswordCubit>(() => _i29.ResendPasswordCubit());
    gh.factory<_i30.ResendPasswordDataSource>(
        () => _i30.ResendPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i31.ResendPasswordRepository>(() =>
        _i32.ResendPasswordRepositoryImpl(
            dataSource: gh<_i30.ResendPasswordDataSource>()));
    gh.singleton<_i33.ResendPasswordUseCase>(_i33.ResendPasswordUseCase(
        repository: gh<_i31.ResendPasswordRepository>()));
    gh.factory<_i34.RolesDataSource>(
        () => _i34.RolesDataSource.create(gh<_i4.Dio>()));
    await gh.factoryAsync<_i35.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i36.CreateNewPasswordDataSource>(
        () => _i36.CreateNewPasswordDataSource.create(gh<_i4.Dio>()));
    gh.factory<_i37.CreateNewPasswordRepository>(() =>
        _i38.CreateNewPasswordRepositoryImpl(
            createNewPasswordDataSource:
                gh<_i36.CreateNewPasswordDataSource>()));
    gh.singleton<_i39.CreateNewPasswordUseCase>(_i39.CreateNewPasswordUseCase(
        repository: gh<_i37.CreateNewPasswordRepository>()));
    gh.factory<_i40.GetPlacesRepository>(() =>
        _i41.GetPlacesRepositoryImpl(dataSource: gh<_i18.PlacesDataSource>()));
    gh.singleton<_i42.GetPlacesUseCase>(
        _i42.GetPlacesUseCase(repository: gh<_i40.GetPlacesRepository>()));
    gh.factory<_i43.GetProfileRepository>(() => _i44.GetProfileRepositoryImpl(
          getProfielDataSource: gh<_i7.GetProfileDataSource>(),
          hiveService: gh<_i8.HiveService>(),
        ));
    gh.singleton<_i45.GetProfileUseCase>(_i45.GetProfileUseCase(
        getProfileRepository: gh<_i43.GetProfileRepository>()));
    gh.factory<_i46.GetRolesRepository>(() =>
        _i47.RoleRepositoryImpl(rolesDataSource: gh<_i34.RolesDataSource>()));
    gh.singleton<_i48.GetRolesUseCase>(
        _i48.GetRolesUseCase(rolesRepository: gh<_i46.GetRolesRepository>()));
    gh.factory<_i49.LoginBloc>(
        () => _i49.LoginBloc(useCase: gh<_i13.LoginUseCase>()));
    gh.factory<_i50.LogoutBloc>(
        () => _i50.LogoutBloc(logoutUsecase: gh<_i17.LogoutUsecase>()));
    gh.factory<_i51.RegisterBloc>(() => _i51.RegisterBloc(
          useCase: gh<_i23.RegisterUseCase>(),
          loginUseCase: gh<_i13.LoginUseCase>(),
        ));
    gh.factory<_i52.ResendCodeBloc>(() => _i52.ResendCodeBloc(
          loginUseCase: gh<_i13.LoginUseCase>(),
          resendCodeUseCase: gh<_i28.ResendCodeUseCase>(),
        ));
    gh.factory<_i53.ResendPasswordBloc>(() => _i53.ResendPasswordBloc(
          loginUseCase: gh<_i13.LoginUseCase>(),
          resendPasswordUseCase: gh<_i33.ResendPasswordUseCase>(),
        ));
    gh.singleton<_i54.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i35.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.factory<_i55.CreateNewPasswordBloc>(() => _i55.CreateNewPasswordBloc(
          createNewPasswordUseCase: gh<_i39.CreateNewPasswordUseCase>(),
          loginUseCase: gh<_i13.LoginUseCase>(),
        ));
    gh.singleton<_i56.GetPlaceDetailUseCase>(
        _i56.GetPlaceDetailUseCase(repository: gh<_i40.GetPlacesRepository>()));
    gh.factory<_i57.GetPlacesBloc>(() => _i57.GetPlacesBloc(
          useCase: gh<_i42.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i56.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i58.GetProfileBloc>(() =>
        _i58.GetProfileBloc(getProfileUseCase: gh<_i45.GetProfileUseCase>()));
    gh.factory<_i59.GetRolesBloc>(() => _i59.GetRolesBloc(
          getRolesUseCase: gh<_i48.GetRolesUseCase>(),
          loginUseCase: gh<_i13.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i60.RegisterModule {}

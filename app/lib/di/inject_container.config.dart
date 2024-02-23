// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i36;

import '../core/services/hive_service.dart' as _i9;
import '../core/utils/share_preferences_util.dart' as _i58;
import '../data/datasources/create_new_password_datasource.dart' as _i37;
import '../data/datasources/get_feeds_datasource.dart' as _i7;
import '../data/datasources/get_profile_datasource.dart' as _i8;
import '../data/datasources/login_data_source.dart' as _i11;
import '../data/datasources/logout_data_source.dart' as _i15;
import '../data/datasources/places_data_source.dart' as _i19;
import '../data/datasources/register_data_source.dart' as _i21;
import '../data/datasources/resend_code_data_source.dart' as _i26;
import '../data/datasources/resend_password_data_source.dart' as _i31;
import '../data/datasources/roles_data_source.dart' as _i35;
import '../data/repositories/create_new_password_repository_impl.dart' as _i39;
import '../data/repositories/get_feed_repository_impl.dart' as _i42;
import '../data/repositories/get_profile_repository_impl.dart' as _i48;
import '../data/repositories/login_repository_impl.dart' as _i13;
import '../data/repositories/logout_repository_impl.dart' as _i17;
import '../data/repositories/places_repository_impl.dart' as _i45;
import '../data/repositories/register_repository_impl.dart' as _i23;
import '../data/repositories/resend_code_repository_impl.dart' as _i28;
import '../data/repositories/resend_password_repository_impl.dart' as _i33;
import '../data/repositories/role_repository_impl.dart' as _i51;
import '../domain/repositories/announcement_respository.dart' as _i4;
import '../domain/repositories/create_new_password_repository.dart' as _i38;
import '../domain/repositories/get_feeds_repository.dart' as _i41;
import '../domain/repositories/get_places_repository.dart' as _i44;
import '../domain/repositories/get_profile_repository.dart' as _i47;
import '../domain/repositories/get_roles_repository.dart' as _i50;
import '../domain/repositories/login_repository.dart' as _i12;
import '../domain/repositories/logout_repository.dart' as _i16;
import '../domain/repositories/register_repository.dart' as _i22;
import '../domain/repositories/resend_code_repository.dart' as _i27;
import '../domain/repositories/resend_password_repository.dart' as _i32;
import '../domain/usecases/announcement_usecase.dart' as _i3;
import '../domain/usecases/create_new_password_usecase.dart' as _i40;
import '../domain/usecases/get_feeds_usecase.dart' as _i43;
import '../domain/usecases/get_place_detail_usecase.dart' as _i60;
import '../domain/usecases/get_places_usecase.dart' as _i46;
import '../domain/usecases/get_profile_usecase.dart' as _i49;
import '../domain/usecases/get_roles_usecase.dart' as _i52;
import '../domain/usecases/login_usecase.dart' as _i14;
import '../domain/usecases/logout_usecase.dart' as _i18;
import '../domain/usecases/register_usecase.dart' as _i24;
import '../domain/usecases/resend_code_usecase.dart' as _i29;
import '../domain/usecases/resend_password_usecase.dart' as _i34;
import '../presentation/blocs/create_new_password/create_new_password_bloc.dart'
    as _i59;
import '../presentation/blocs/create_new_password/create_new_password_cubit.dart'
    as _i5;
import '../presentation/blocs/get_places/get_places_bloc.dart' as _i61;
import '../presentation/blocs/get_roles/get_roles_bloc.dart' as _i63;
import '../presentation/blocs/login/login_bloc.dart' as _i53;
import '../presentation/blocs/login/login_cubit.dart' as _i10;
import '../presentation/blocs/logout/logout_bloc.dart' as _i54;
import '../presentation/blocs/profile/get_profile_bloc.dart' as _i62;
import '../presentation/blocs/register/register_bloc.dart' as _i55;
import '../presentation/blocs/register/register_cubit.dart' as _i20;
import '../presentation/blocs/resend_code/resend_code_bloc.dart' as _i56;
import '../presentation/blocs/resend_code/resend_code_cubit.dart' as _i25;
import '../presentation/blocs/resend_password/resend_password_bloc.dart'
    as _i57;
import '../presentation/blocs/resend_password/resend_password_cubit.dart'
    as _i30;
import 'register_module.dart' as _i64;

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
    gh.singleton<_i3.AnnouncementUsecase>(
        _i3.AnnouncementUsecase(repository: gh<_i4.AnnouncementRepository>()));
    gh.factory<_i5.CreateNewPasswordCubit>(() => _i5.CreateNewPasswordCubit());
    gh.lazySingleton<_i6.Dio>(() => registerModule.dio());
    gh.factory<_i7.GetFeedDataSource>(
        () => _i7.GetFeedDataSource.create(gh<_i6.Dio>()));
    gh.factory<_i8.GetProfileDataSource>(
        () => _i8.GetProfileDataSource.create(gh<_i6.Dio>()));
    gh.singleton<_i9.HiveService>(registerModule.hiveService);
    gh.factory<_i10.LoginCubit>(() => _i10.LoginCubit());
    gh.factory<_i11.LoginDataSource>(
        () => _i11.LoginDataSource.create(gh<_i6.Dio>()));
    gh.factory<_i12.LoginRepository>(() =>
        _i13.LoginRepositoryImpl(loginDataSource: gh<_i11.LoginDataSource>()));
    gh.singleton<_i14.LoginUseCase>(
        _i14.LoginUseCase(repository: gh<_i12.LoginRepository>()));
    gh.factory<_i15.LogoutDataSource>(
        () => _i15.LogoutDataSource.create(gh<_i6.Dio>()));
    gh.factory<_i16.LogoutRepository>(() =>
        _i17.LogoutRepositoryImpl(dataSource: gh<_i15.LogoutDataSource>()));
    gh.singleton<_i18.LogoutUsecase>(
        _i18.LogoutUsecase(repository: gh<_i16.LogoutRepository>()));
    gh.factory<_i19.PlacesDataSource>(
        () => _i19.PlacesDataSource.create(gh<_i6.Dio>()));
    gh.factory<_i20.RegisterCubit>(() => _i20.RegisterCubit());
    gh.factory<_i21.RegisterDataSource>(
        () => _i21.RegisterDataSource.create(gh<_i6.Dio>()));
    gh.factory<_i22.RegisterRepository>(() =>
        _i23.RegisterRepositoryImpl(dataSource: gh<_i21.RegisterDataSource>()));
    gh.singleton<_i24.RegisterUseCase>(
        _i24.RegisterUseCase(repository: gh<_i22.RegisterRepository>()));
    gh.factory<_i25.ResendCodeCubit>(() => _i25.ResendCodeCubit());
    gh.factory<_i26.ResendCodeDataSource>(
        () => _i26.ResendCodeDataSource.create(gh<_i6.Dio>()));
    gh.factory<_i27.ResendCodeRepository>(() => _i28.ResendCodeRepositoryImpl(
        resendCodeDataSource: gh<_i26.ResendCodeDataSource>()));
    gh.singleton<_i29.ResendCodeUseCase>(
        _i29.ResendCodeUseCase(repository: gh<_i27.ResendCodeRepository>()));
    gh.factory<_i30.ResendPasswordCubit>(() => _i30.ResendPasswordCubit());
    gh.factory<_i31.ResendPasswordDataSource>(
        () => _i31.ResendPasswordDataSource.create(gh<_i6.Dio>()));
    gh.factory<_i32.ResendPasswordRepository>(() =>
        _i33.ResendPasswordRepositoryImpl(
            dataSource: gh<_i31.ResendPasswordDataSource>()));
    gh.singleton<_i34.ResendPasswordUseCase>(_i34.ResendPasswordUseCase(
        repository: gh<_i32.ResendPasswordRepository>()));
    gh.factory<_i35.RolesDataSource>(
        () => _i35.RolesDataSource.create(gh<_i6.Dio>()));
    await gh.factoryAsync<_i36.SharedPreferences>(
      () => registerModule.prefs,
      instanceName: 'sharedPreferences',
      preResolve: true,
    );
    gh.factory<_i37.CreateNewPasswordDataSource>(
        () => _i37.CreateNewPasswordDataSource.create(gh<_i6.Dio>()));
    gh.factory<_i38.CreateNewPasswordRepository>(() =>
        _i39.CreateNewPasswordRepositoryImpl(
            createNewPasswordDataSource:
                gh<_i37.CreateNewPasswordDataSource>()));
    gh.singleton<_i40.CreateNewPasswordUseCase>(_i40.CreateNewPasswordUseCase(
        repository: gh<_i38.CreateNewPasswordRepository>()));
    gh.factory<_i41.GetFeedsRepository>(() => _i42.GetFeedRepositoryImpl(
          dataSource: gh<_i7.GetFeedDataSource>(),
          hiveService: gh<_i9.HiveService>(),
        ));
    gh.singleton<_i43.GetFeedsUseCase>(
        _i43.GetFeedsUseCase(repository: gh<_i41.GetFeedsRepository>()));
    gh.factory<_i44.GetPlacesRepository>(() =>
        _i45.GetPlacesRepositoryImpl(dataSource: gh<_i19.PlacesDataSource>()));
    gh.singleton<_i46.GetPlacesUseCase>(
        _i46.GetPlacesUseCase(repository: gh<_i44.GetPlacesRepository>()));
    gh.factory<_i47.GetProfileRepository>(() => _i48.GetProfileRepositoryImpl(
          getProfielDataSource: gh<_i8.GetProfileDataSource>(),
          hiveService: gh<_i9.HiveService>(),
        ));
    gh.singleton<_i49.GetProfileUseCase>(_i49.GetProfileUseCase(
        getProfileRepository: gh<_i47.GetProfileRepository>()));
    gh.factory<_i50.GetRolesRepository>(() =>
        _i51.RoleRepositoryImpl(rolesDataSource: gh<_i35.RolesDataSource>()));
    gh.singleton<_i52.GetRolesUseCase>(
        _i52.GetRolesUseCase(rolesRepository: gh<_i50.GetRolesRepository>()));
    gh.factory<_i53.LoginBloc>(
        () => _i53.LoginBloc(useCase: gh<_i14.LoginUseCase>()));
    gh.factory<_i54.LogoutBloc>(
        () => _i54.LogoutBloc(logoutUsecase: gh<_i18.LogoutUsecase>()));
    gh.factory<_i55.RegisterBloc>(() => _i55.RegisterBloc(
          useCase: gh<_i24.RegisterUseCase>(),
          loginUseCase: gh<_i14.LoginUseCase>(),
        ));
    gh.factory<_i56.ResendCodeBloc>(() => _i56.ResendCodeBloc(
          loginUseCase: gh<_i14.LoginUseCase>(),
          resendCodeUseCase: gh<_i29.ResendCodeUseCase>(),
        ));
    gh.factory<_i57.ResendPasswordBloc>(() => _i57.ResendPasswordBloc(
          loginUseCase: gh<_i14.LoginUseCase>(),
          resendPasswordUseCase: gh<_i34.ResendPasswordUseCase>(),
        ));
    gh.singleton<_i58.SharePreferencesUtil>(registerModule.sharePreferencesUtil(
        gh<_i36.SharedPreferences>(instanceName: 'sharedPreferences')));
    gh.factory<_i59.CreateNewPasswordBloc>(() => _i59.CreateNewPasswordBloc(
          createNewPasswordUseCase: gh<_i40.CreateNewPasswordUseCase>(),
          loginUseCase: gh<_i14.LoginUseCase>(),
        ));
    gh.singleton<_i60.GetPlaceDetailUseCase>(
        _i60.GetPlaceDetailUseCase(repository: gh<_i44.GetPlacesRepository>()));
    gh.factory<_i61.GetPlacesBloc>(() => _i61.GetPlacesBloc(
          useCase: gh<_i46.GetPlacesUseCase>(),
          getPlaceDetailUseCase: gh<_i60.GetPlaceDetailUseCase>(),
        ));
    gh.factory<_i62.GetProfileBloc>(() =>
        _i62.GetProfileBloc(getProfileUseCase: gh<_i49.GetProfileUseCase>()));
    gh.factory<_i63.GetRolesBloc>(() => _i63.GetRolesBloc(
          getRolesUseCase: gh<_i52.GetRolesUseCase>(),
          loginUseCase: gh<_i14.LoginUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i64.RegisterModule {}

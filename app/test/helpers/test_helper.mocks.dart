// Mocks generated by Mockito 5.4.4 from annotations
// in app/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i12;

import 'package:app/core/errors/failure.dart' as _i13;
import 'package:app/data/datasources/login_data_source.dart' as _i28;
import 'package:app/data/datasources/places_data_source.dart' as _i29;
import 'package:app/data/datasources/resend_password_data_source.dart' as _i26;
import 'package:app/data/datasources/roles_data_source.dart' as _i27;
import 'package:app/data/models/base/base_model.dart' as _i7;
import 'package:app/data/models/login/login_model.dart' as _i9;
import 'package:app/data/models/places/places_model.dart' as _i10;
import 'package:app/data/models/roles/roles_model.dart' as _i8;
import 'package:app/domain/entities/base_entity.dart' as _i21;
import 'package:app/domain/entities/login_entity.dart' as _i15;
import 'package:app/domain/entities/place_suggestion_entity.dart' as _i17;
import 'package:app/domain/entities/register_entity.dart' as _i23;
import 'package:app/domain/entities/roles_entity.dart' as _i14;
import 'package:app/domain/repositories/get_places_repository.dart' as _i4;
import 'package:app/domain/repositories/get_roles_repository.dart' as _i5;
import 'package:app/domain/repositories/login_repository.dart' as _i6;
import 'package:app/domain/repositories/register_repository.dart' as _i3;
import 'package:app/domain/repositories/resend_password_repository.dart'
    as _i20;
import 'package:app/domain/usecases/get_place_detail_usecase.dart' as _i19;
import 'package:app/domain/usecases/get_places_usecase.dart' as _i18;
import 'package:app/domain/usecases/get_roles_usecase.dart' as _i25;
import 'package:app/domain/usecases/login_usecase.dart' as _i16;
import 'package:app/domain/usecases/register_usecase.dart' as _i24;
import 'package:app/domain/usecases/resend_password_usecase.dart' as _i22;
import 'package:dartz/dartz.dart' as _i2;
import 'package:dio/dio.dart' as _i11;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRegisterRepository_1 extends _i1.SmartFake
    implements _i3.RegisterRepository {
  _FakeRegisterRepository_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetPlacesRepository_2 extends _i1.SmartFake
    implements _i4.GetPlacesRepository {
  _FakeGetPlacesRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetRolesRepository_3 extends _i1.SmartFake
    implements _i5.GetRolesRepository {
  _FakeGetRolesRepository_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLoginRepository_4 extends _i1.SmartFake
    implements _i6.LoginRepository {
  _FakeLoginRepository_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBaseModel_5 extends _i1.SmartFake implements _i7.BaseModel {
  _FakeBaseModel_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRolesModel_6 extends _i1.SmartFake implements _i8.RolesModel {
  _FakeRolesModel_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLoginModel_7 extends _i1.SmartFake implements _i9.LoginModel {
  _FakeLoginModel_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePlacesModel_8 extends _i1.SmartFake implements _i10.PlacesModel {
  _FakePlacesModel_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBaseOptions_9 extends _i1.SmartFake implements _i11.BaseOptions {
  _FakeBaseOptions_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpClientAdapter_10 extends _i1.SmartFake
    implements _i11.HttpClientAdapter {
  _FakeHttpClientAdapter_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransformer_11 extends _i1.SmartFake implements _i11.Transformer {
  _FakeTransformer_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInterceptors_12 extends _i1.SmartFake implements _i11.Interceptors {
  _FakeInterceptors_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_13<T1> extends _i1.SmartFake implements _i11.Response<T1> {
  _FakeResponse_13(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetRolesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetRolesRepository extends _i1.Mock
    implements _i5.GetRolesRepository {
  MockGetRolesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<_i2.Either<_i13.Failure, _i14.RolesEntity>> getRoles(
          String? token) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRoles,
          [token],
        ),
        returnValue:
            _i12.Future<_i2.Either<_i13.Failure, _i14.RolesEntity>>.value(
                _FakeEither_0<_i13.Failure, _i14.RolesEntity>(
          this,
          Invocation.method(
            #getRoles,
            [token],
          ),
        )),
      ) as _i12.Future<_i2.Either<_i13.Failure, _i14.RolesEntity>>);
}

/// A class which mocks [LoginRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginRepository extends _i1.Mock implements _i6.LoginRepository {
  MockLoginRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<_i2.Either<_i13.Failure, _i15.LoginEntity>> login(
          _i16.LoginParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [params],
        ),
        returnValue:
            _i12.Future<_i2.Either<_i13.Failure, _i15.LoginEntity>>.value(
                _FakeEither_0<_i13.Failure, _i15.LoginEntity>(
          this,
          Invocation.method(
            #login,
            [params],
          ),
        )),
      ) as _i12.Future<_i2.Either<_i13.Failure, _i15.LoginEntity>>);
}

/// A class which mocks [GetPlacesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetPlacesRepository extends _i1.Mock
    implements _i4.GetPlacesRepository {
  MockGetPlacesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<
      _i2.Either<_i13.Failure, List<_i17.PlaceSuggestionEntity>>> getPlaces(
          _i18.GetPlacesParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPlaces,
          [params],
        ),
        returnValue: _i12.Future<
                _i2
                .Either<_i13.Failure, List<_i17.PlaceSuggestionEntity>>>.value(
            _FakeEither_0<_i13.Failure, List<_i17.PlaceSuggestionEntity>>(
          this,
          Invocation.method(
            #getPlaces,
            [params],
          ),
        )),
      ) as _i12
          .Future<_i2.Either<_i13.Failure, List<_i17.PlaceSuggestionEntity>>>);

  @override
  _i12.Future<
      _i2.Either<_i13.Failure, _i17.PlaceSuggestionEntity>> getPlaceDetail(
          _i19.GetPlaceDetailParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPlaceDetail,
          [params],
        ),
        returnValue: _i12
            .Future<_i2.Either<_i13.Failure, _i17.PlaceSuggestionEntity>>.value(
            _FakeEither_0<_i13.Failure, _i17.PlaceSuggestionEntity>(
          this,
          Invocation.method(
            #getPlaceDetail,
            [params],
          ),
        )),
      ) as _i12.Future<_i2.Either<_i13.Failure, _i17.PlaceSuggestionEntity>>);
}

/// A class which mocks [ResendPasswordRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockResendPasswordRepository extends _i1.Mock
    implements _i20.ResendPasswordRepository {
  MockResendPasswordRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<_i2.Either<_i13.Failure, _i21.BaseEntity>> resendPassword(
          _i22.ResendPasswordParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #resendPassword,
          [params],
        ),
        returnValue:
            _i12.Future<_i2.Either<_i13.Failure, _i21.BaseEntity>>.value(
                _FakeEither_0<_i13.Failure, _i21.BaseEntity>(
          this,
          Invocation.method(
            #resendPassword,
            [params],
          ),
        )),
      ) as _i12.Future<_i2.Either<_i13.Failure, _i21.BaseEntity>>);
}

/// A class which mocks [RegisterRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockRegisterRepository extends _i1.Mock
    implements _i3.RegisterRepository {
  MockRegisterRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<_i2.Either<_i13.Failure, _i23.RegisterEntity>> register(
          _i24.RegisterParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #register,
          [params],
        ),
        returnValue:
            _i12.Future<_i2.Either<_i13.Failure, _i23.RegisterEntity>>.value(
                _FakeEither_0<_i13.Failure, _i23.RegisterEntity>(
          this,
          Invocation.method(
            #register,
            [params],
          ),
        )),
      ) as _i12.Future<_i2.Either<_i13.Failure, _i23.RegisterEntity>>);
}

/// A class which mocks [RegisterUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockRegisterUseCase extends _i1.Mock implements _i24.RegisterUseCase {
  MockRegisterUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.RegisterRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeRegisterRepository_1(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i3.RegisterRepository);

  @override
  _i12.Future<_i2.Either<_i13.Failure, _i23.RegisterEntity>> execute(
          _i24.RegisterParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [params],
        ),
        returnValue:
            _i12.Future<_i2.Either<_i13.Failure, _i23.RegisterEntity>>.value(
                _FakeEither_0<_i13.Failure, _i23.RegisterEntity>(
          this,
          Invocation.method(
            #execute,
            [params],
          ),
        )),
      ) as _i12.Future<_i2.Either<_i13.Failure, _i23.RegisterEntity>>);
}

/// A class which mocks [GetPlacesUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetPlacesUseCase extends _i1.Mock implements _i18.GetPlacesUseCase {
  MockGetPlacesUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.GetPlacesRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeGetPlacesRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.GetPlacesRepository);

  @override
  _i12.Future<
      _i2.Either<_i13.Failure, List<_i17.PlaceSuggestionEntity>>> execute(
          _i18.GetPlacesParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [params],
        ),
        returnValue: _i12.Future<
                _i2
                .Either<_i13.Failure, List<_i17.PlaceSuggestionEntity>>>.value(
            _FakeEither_0<_i13.Failure, List<_i17.PlaceSuggestionEntity>>(
          this,
          Invocation.method(
            #execute,
            [params],
          ),
        )),
      ) as _i12
          .Future<_i2.Either<_i13.Failure, List<_i17.PlaceSuggestionEntity>>>);
}

/// A class which mocks [GetRolesUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetRolesUseCase extends _i1.Mock implements _i25.GetRolesUseCase {
  MockGetRolesUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.GetRolesRepository get rolesRepository => (super.noSuchMethod(
        Invocation.getter(#rolesRepository),
        returnValue: _FakeGetRolesRepository_3(
          this,
          Invocation.getter(#rolesRepository),
        ),
      ) as _i5.GetRolesRepository);

  @override
  _i12.Future<_i2.Either<_i13.Failure, _i14.RolesEntity>> execute(
          String? token) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [token],
        ),
        returnValue:
            _i12.Future<_i2.Either<_i13.Failure, _i14.RolesEntity>>.value(
                _FakeEither_0<_i13.Failure, _i14.RolesEntity>(
          this,
          Invocation.method(
            #execute,
            [token],
          ),
        )),
      ) as _i12.Future<_i2.Either<_i13.Failure, _i14.RolesEntity>>);
}

/// A class which mocks [GetPlaceDetailUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetPlaceDetailUseCase extends _i1.Mock
    implements _i19.GetPlaceDetailUseCase {
  MockGetPlaceDetailUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.GetPlacesRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeGetPlacesRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.GetPlacesRepository);

  @override
  _i12.Future<_i2.Either<_i13.Failure, _i17.PlaceSuggestionEntity>> execute(
          _i19.GetPlaceDetailParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [params],
        ),
        returnValue: _i12
            .Future<_i2.Either<_i13.Failure, _i17.PlaceSuggestionEntity>>.value(
            _FakeEither_0<_i13.Failure, _i17.PlaceSuggestionEntity>(
          this,
          Invocation.method(
            #execute,
            [params],
          ),
        )),
      ) as _i12.Future<_i2.Either<_i13.Failure, _i17.PlaceSuggestionEntity>>);
}

/// A class which mocks [LoginUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginUseCase extends _i1.Mock implements _i16.LoginUseCase {
  MockLoginUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.LoginRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLoginRepository_4(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i6.LoginRepository);

  @override
  _i12.Future<_i2.Either<_i13.Failure, _i15.LoginEntity>> execute(
          _i16.LoginParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [params],
        ),
        returnValue:
            _i12.Future<_i2.Either<_i13.Failure, _i15.LoginEntity>>.value(
                _FakeEither_0<_i13.Failure, _i15.LoginEntity>(
          this,
          Invocation.method(
            #execute,
            [params],
          ),
        )),
      ) as _i12.Future<_i2.Either<_i13.Failure, _i15.LoginEntity>>);
}

/// A class which mocks [ResendPasswordDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockResendPasswordDataSource extends _i1.Mock
    implements _i26.ResendPasswordDataSource {
  MockResendPasswordDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<_i7.BaseModel> resendPassword(
          _i22.ResendPasswordParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #resendPassword,
          [params],
        ),
        returnValue: _i12.Future<_i7.BaseModel>.value(_FakeBaseModel_5(
          this,
          Invocation.method(
            #resendPassword,
            [params],
          ),
        )),
      ) as _i12.Future<_i7.BaseModel>);
}

/// A class which mocks [RolesDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockRolesDataSource extends _i1.Mock implements _i27.RolesDataSource {
  MockRolesDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<_i8.RolesModel> getRoles(String? token) => (super.noSuchMethod(
        Invocation.method(
          #getRoles,
          [token],
        ),
        returnValue: _i12.Future<_i8.RolesModel>.value(_FakeRolesModel_6(
          this,
          Invocation.method(
            #getRoles,
            [token],
          ),
        )),
      ) as _i12.Future<_i8.RolesModel>);
}

/// A class which mocks [LoginDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginDataSource extends _i1.Mock implements _i28.LoginDataSource {
  MockLoginDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<_i9.LoginModel> login(_i16.LoginParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [params],
        ),
        returnValue: _i12.Future<_i9.LoginModel>.value(_FakeLoginModel_7(
          this,
          Invocation.method(
            #login,
            [params],
          ),
        )),
      ) as _i12.Future<_i9.LoginModel>);
}

/// A class which mocks [PlacesDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockPlacesDataSource extends _i1.Mock implements _i29.PlacesDataSource {
  MockPlacesDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<List<_i10.PlacesModel>> getPlaces(_i18.GetPlacesParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPlaces,
          [params],
        ),
        returnValue:
            _i12.Future<List<_i10.PlacesModel>>.value(<_i10.PlacesModel>[]),
      ) as _i12.Future<List<_i10.PlacesModel>>);

  @override
  _i12.Future<_i10.PlacesModel> getPlaceDetail(
          _i19.GetPlaceDetailParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPlaceDetail,
          [params],
        ),
        returnValue: _i12.Future<_i10.PlacesModel>.value(_FakePlacesModel_8(
          this,
          Invocation.method(
            #getPlaceDetail,
            [params],
          ),
        )),
      ) as _i12.Future<_i10.PlacesModel>);
}

/// A class which mocks [Dio].
///
/// See the documentation for Mockito's code generation for more information.
class MockDioClient extends _i1.Mock implements _i11.Dio {
  MockDioClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i11.BaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeBaseOptions_9(
          this,
          Invocation.getter(#options),
        ),
      ) as _i11.BaseOptions);

  @override
  set options(_i11.BaseOptions? _options) => super.noSuchMethod(
        Invocation.setter(
          #options,
          _options,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i11.HttpClientAdapter get httpClientAdapter => (super.noSuchMethod(
        Invocation.getter(#httpClientAdapter),
        returnValue: _FakeHttpClientAdapter_10(
          this,
          Invocation.getter(#httpClientAdapter),
        ),
      ) as _i11.HttpClientAdapter);

  @override
  set httpClientAdapter(_i11.HttpClientAdapter? _httpClientAdapter) =>
      super.noSuchMethod(
        Invocation.setter(
          #httpClientAdapter,
          _httpClientAdapter,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i11.Transformer get transformer => (super.noSuchMethod(
        Invocation.getter(#transformer),
        returnValue: _FakeTransformer_11(
          this,
          Invocation.getter(#transformer),
        ),
      ) as _i11.Transformer);

  @override
  set transformer(_i11.Transformer? _transformer) => super.noSuchMethod(
        Invocation.setter(
          #transformer,
          _transformer,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i11.Interceptors get interceptors => (super.noSuchMethod(
        Invocation.getter(#interceptors),
        returnValue: _FakeInterceptors_12(
          this,
          Invocation.getter(#interceptors),
        ),
      ) as _i11.Interceptors);

  @override
  void close({bool? force = false}) => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
          {#force: force},
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i12.Future<_i11.Response<T>> head<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #head,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> headUri<T>(
    Uri? uri, {
    Object? data,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #headUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #headUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> get<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
    _i11.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #get,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> getUri<T>(
    Uri? uri, {
    Object? data,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
    _i11.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #getUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> post<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
    _i11.ProgressCallback? onSendProgress,
    _i11.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #post,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> postUri<T>(
    Uri? uri, {
    Object? data,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
    _i11.ProgressCallback? onSendProgress,
    _i11.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #postUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> put<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
    _i11.ProgressCallback? onSendProgress,
    _i11.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #put,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> putUri<T>(
    Uri? uri, {
    Object? data,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
    _i11.ProgressCallback? onSendProgress,
    _i11.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #putUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> patch<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
    _i11.ProgressCallback? onSendProgress,
    _i11.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #patch,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> patchUri<T>(
    Uri? uri, {
    Object? data,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
    _i11.ProgressCallback? onSendProgress,
    _i11.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patchUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #patchUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> delete<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #delete,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> deleteUri<T>(
    Uri? uri, {
    Object? data,
    _i11.Options? options,
    _i11.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #deleteUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<dynamic>> download(
    String? urlPath,
    dynamic savePath, {
    _i11.ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    _i11.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i11.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #download,
          [
            urlPath,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i12.Future<_i11.Response<dynamic>>.value(_FakeResponse_13<dynamic>(
          this,
          Invocation.method(
            #download,
            [
              urlPath,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<dynamic>>);

  @override
  _i12.Future<_i11.Response<dynamic>> downloadUri(
    Uri? uri,
    dynamic savePath, {
    _i11.ProgressCallback? onReceiveProgress,
    _i11.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i11.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #downloadUri,
          [
            uri,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i12.Future<_i11.Response<dynamic>>.value(_FakeResponse_13<dynamic>(
          this,
          Invocation.method(
            #downloadUri,
            [
              uri,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<dynamic>>);

  @override
  _i12.Future<_i11.Response<T>> request<T>(
    String? url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i11.CancelToken? cancelToken,
    _i11.Options? options,
    _i11.ProgressCallback? onSendProgress,
    _i11.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #request,
          [url],
          {
            #data: data,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #request,
            [url],
            {
              #data: data,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> requestUri<T>(
    Uri? uri, {
    Object? data,
    _i11.CancelToken? cancelToken,
    _i11.Options? options,
    _i11.ProgressCallback? onSendProgress,
    _i11.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestUri,
          [uri],
          {
            #data: data,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #requestUri,
            [uri],
            {
              #data: data,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);

  @override
  _i12.Future<_i11.Response<T>> fetch<T>(_i11.RequestOptions? requestOptions) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [requestOptions],
        ),
        returnValue: _i12.Future<_i11.Response<T>>.value(_FakeResponse_13<T>(
          this,
          Invocation.method(
            #fetch,
            [requestOptions],
          ),
        )),
      ) as _i12.Future<_i11.Response<T>>);
}

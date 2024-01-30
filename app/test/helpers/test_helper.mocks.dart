// Mocks generated by Mockito 5.4.4 from annotations
// in app/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:app/core/errors/failure.dart' as _i8;
import 'package:app/data/datasources/roles_data_source.dart' as _i11;
import 'package:app/data/models/roles/roles_model.dart' as _i4;
import 'package:app/domain/entities/login_entity.dart' as _i12;
import 'package:app/domain/entities/roles_entity.dart' as _i9;
import 'package:app/domain/repositories/get_roles_repository.dart' as _i3;
import 'package:app/domain/repositories/login_repository.dart' as _i5;
import 'package:app/domain/usecases/get_roles_usecase.dart' as _i10;
import 'package:app/domain/usecases/login_usecase.dart' as _i13;
import 'package:dartz/dartz.dart' as _i2;
import 'package:dio/dio.dart' as _i6;
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

class _FakeGetRolesRepository_1 extends _i1.SmartFake
    implements _i3.GetRolesRepository {
  _FakeGetRolesRepository_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRolesModel_2 extends _i1.SmartFake implements _i4.RolesModel {
  _FakeRolesModel_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLoginRepository_3 extends _i1.SmartFake
    implements _i5.LoginRepository {
  _FakeLoginRepository_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBaseOptions_4 extends _i1.SmartFake implements _i6.BaseOptions {
  _FakeBaseOptions_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpClientAdapter_5 extends _i1.SmartFake
    implements _i6.HttpClientAdapter {
  _FakeHttpClientAdapter_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransformer_6 extends _i1.SmartFake implements _i6.Transformer {
  _FakeTransformer_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInterceptors_7 extends _i1.SmartFake implements _i6.Interceptors {
  _FakeInterceptors_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_8<T1> extends _i1.SmartFake implements _i6.Response<T1> {
  _FakeResponse_8(
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
    implements _i3.GetRolesRepository {
  MockGetRolesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, _i9.RolesEntity>> getRoles() =>
      (super.noSuchMethod(
        Invocation.method(
          #getRoles,
          [],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, _i9.RolesEntity>>.value(
            _FakeEither_0<_i8.Failure, _i9.RolesEntity>(
          this,
          Invocation.method(
            #getRoles,
            [],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i9.RolesEntity>>);
}

/// A class which mocks [GetRolesUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetRolesUseCase extends _i1.Mock implements _i10.GetRolesUseCase {
  MockGetRolesUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.GetRolesRepository get rolesRepository => (super.noSuchMethod(
        Invocation.getter(#rolesRepository),
        returnValue: _FakeGetRolesRepository_1(
          this,
          Invocation.getter(#rolesRepository),
        ),
      ) as _i3.GetRolesRepository);

  @override
  _i7.Future<_i2.Either<_i8.Failure, _i9.RolesEntity>> execute() =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, _i9.RolesEntity>>.value(
            _FakeEither_0<_i8.Failure, _i9.RolesEntity>(
          this,
          Invocation.method(
            #execute,
            [],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i9.RolesEntity>>);
}

/// A class which mocks [RolesDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockRolesDataSource extends _i1.Mock implements _i11.RolesDataSource {
  MockRolesDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i4.RolesModel> getRoles() => (super.noSuchMethod(
        Invocation.method(
          #getRoles,
          [],
        ),
        returnValue: _i7.Future<_i4.RolesModel>.value(_FakeRolesModel_2(
          this,
          Invocation.method(
            #getRoles,
            [],
          ),
        )),
      ) as _i7.Future<_i4.RolesModel>);
}

/// A class which mocks [LoginRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginRepository extends _i1.Mock implements _i5.LoginRepository {
  MockLoginRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, _i12.LoginEntity>> login(
          _i13.LoginParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [params],
        ),
        returnValue:
            _i7.Future<_i2.Either<_i8.Failure, _i12.LoginEntity>>.value(
                _FakeEither_0<_i8.Failure, _i12.LoginEntity>(
          this,
          Invocation.method(
            #login,
            [params],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i12.LoginEntity>>);
}

/// A class which mocks [LoginUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginUseCase extends _i1.Mock implements _i13.LoginUseCase {
  MockLoginUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.LoginRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLoginRepository_3(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i5.LoginRepository);

  @override
  _i7.Future<_i2.Either<_i8.Failure, _i12.LoginEntity>> execute(
          _i13.LoginParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [params],
        ),
        returnValue:
            _i7.Future<_i2.Either<_i8.Failure, _i12.LoginEntity>>.value(
                _FakeEither_0<_i8.Failure, _i12.LoginEntity>(
          this,
          Invocation.method(
            #execute,
            [params],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i12.LoginEntity>>);
}

/// A class which mocks [Dio].
///
/// See the documentation for Mockito's code generation for more information.
class MockDioClient extends _i1.Mock implements _i6.Dio {
  MockDioClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.BaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeBaseOptions_4(
          this,
          Invocation.getter(#options),
        ),
      ) as _i6.BaseOptions);

  @override
  set options(_i6.BaseOptions? _options) => super.noSuchMethod(
        Invocation.setter(
          #options,
          _options,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.HttpClientAdapter get httpClientAdapter => (super.noSuchMethod(
        Invocation.getter(#httpClientAdapter),
        returnValue: _FakeHttpClientAdapter_5(
          this,
          Invocation.getter(#httpClientAdapter),
        ),
      ) as _i6.HttpClientAdapter);

  @override
  set httpClientAdapter(_i6.HttpClientAdapter? _httpClientAdapter) =>
      super.noSuchMethod(
        Invocation.setter(
          #httpClientAdapter,
          _httpClientAdapter,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Transformer get transformer => (super.noSuchMethod(
        Invocation.getter(#transformer),
        returnValue: _FakeTransformer_6(
          this,
          Invocation.getter(#transformer),
        ),
      ) as _i6.Transformer);

  @override
  set transformer(_i6.Transformer? _transformer) => super.noSuchMethod(
        Invocation.setter(
          #transformer,
          _transformer,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Interceptors get interceptors => (super.noSuchMethod(
        Invocation.getter(#interceptors),
        returnValue: _FakeInterceptors_7(
          this,
          Invocation.getter(#interceptors),
        ),
      ) as _i6.Interceptors);

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
  _i7.Future<_i6.Response<T>> head<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> headUri<T>(
    Uri? uri, {
    Object? data,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> get<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
    _i6.ProgressCallback? onReceiveProgress,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> getUri<T>(
    Uri? uri, {
    Object? data,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
    _i6.ProgressCallback? onReceiveProgress,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> post<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
    _i6.ProgressCallback? onSendProgress,
    _i6.ProgressCallback? onReceiveProgress,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> postUri<T>(
    Uri? uri, {
    Object? data,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
    _i6.ProgressCallback? onSendProgress,
    _i6.ProgressCallback? onReceiveProgress,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> put<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
    _i6.ProgressCallback? onSendProgress,
    _i6.ProgressCallback? onReceiveProgress,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> putUri<T>(
    Uri? uri, {
    Object? data,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
    _i6.ProgressCallback? onSendProgress,
    _i6.ProgressCallback? onReceiveProgress,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> patch<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
    _i6.ProgressCallback? onSendProgress,
    _i6.ProgressCallback? onReceiveProgress,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> patchUri<T>(
    Uri? uri, {
    Object? data,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
    _i6.ProgressCallback? onSendProgress,
    _i6.ProgressCallback? onReceiveProgress,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> delete<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> deleteUri<T>(
    Uri? uri, {
    Object? data,
    _i6.Options? options,
    _i6.CancelToken? cancelToken,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<dynamic>> download(
    String? urlPath,
    dynamic savePath, {
    _i6.ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    _i6.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i6.Options? options,
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
            _i7.Future<_i6.Response<dynamic>>.value(_FakeResponse_8<dynamic>(
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
      ) as _i7.Future<_i6.Response<dynamic>>);

  @override
  _i7.Future<_i6.Response<dynamic>> downloadUri(
    Uri? uri,
    dynamic savePath, {
    _i6.ProgressCallback? onReceiveProgress,
    _i6.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i6.Options? options,
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
            _i7.Future<_i6.Response<dynamic>>.value(_FakeResponse_8<dynamic>(
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
      ) as _i7.Future<_i6.Response<dynamic>>);

  @override
  _i7.Future<_i6.Response<T>> request<T>(
    String? url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i6.CancelToken? cancelToken,
    _i6.Options? options,
    _i6.ProgressCallback? onSendProgress,
    _i6.ProgressCallback? onReceiveProgress,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> requestUri<T>(
    Uri? uri, {
    Object? data,
    _i6.CancelToken? cancelToken,
    _i6.Options? options,
    _i6.ProgressCallback? onSendProgress,
    _i6.ProgressCallback? onReceiveProgress,
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
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
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
      ) as _i7.Future<_i6.Response<T>>);

  @override
  _i7.Future<_i6.Response<T>> fetch<T>(_i6.RequestOptions? requestOptions) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [requestOptions],
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_8<T>(
          this,
          Invocation.method(
            #fetch,
            [requestOptions],
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
}

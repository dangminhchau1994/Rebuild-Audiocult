import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/models/base/base_model.dart';
import 'package:app/data/repositories/resend_code_repository_impl.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/usecases/resend_code_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockResendCodeDataSource dataSource;
  late ResendCodeRepositoryImpl repository;

  setUp(() {
    dataSource = MockResendCodeDataSource();
    repository = ResendCodeRepositoryImpl(resendCodeDataSource: dataSource);
  });

  group('resendCode', () {
    const tBaseModel = BaseModel(
      message: 'Resend password successfully',
      isSuccess: true,
      stausCode: 200,
      error: {
        'message': 'Resend password failed',
      },
    );

    const tBaseEntity = BaseEntity(
      message: 'Resend password successfully',
      isSuccess: true,
      stausCode: 200,
      error: {
        'message': 'Resend password failed',
      },
    );

    final tParams = ResendCodeParams(code: 'code', token: 'token');

    test('should return base entity when call api successfully', () async {
      // arrange
      when(dataSource.resendCode(any)).thenAnswer((_) async => tBaseModel);

      // act
      final result = await repository.resendCode(tParams);

      // assert
      expect(result, const Right(tBaseEntity));
    });

    test('should return failure when call api failed', () async {
      // arrange
      when(dataSource.resendCode(any)).thenThrow(ServerException());

      // act
      final result = await repository.resendCode(tParams);

      // assert
      expect(result, const Left(ServerFailure()));
    });

    test('should return network failure when device is offline', () async {
      // arrange
      when(dataSource.resendCode(any))
          .thenThrow(const SocketException('No Internet'));

      // act
      final result = await repository.resendCode(tParams);

      // assert
      expect(result, const Left(NetworkFailure()));
    });
  });
}

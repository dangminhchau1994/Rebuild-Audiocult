import 'dart:io';

import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/models/base/base_model.dart';
import 'package:app/data/repositories/resend_password_repository_impl.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/usecases/resend_password_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockResendPasswordDataSource dataSource;
  late ResendPasswordRepositoryImpl repositoryImpl;

  setUp(() {
    dataSource = MockResendPasswordDataSource();
    repositoryImpl = ResendPasswordRepositoryImpl(dataSource: dataSource);
  });

  group('resend password repository impl', () {
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

    final tParams = ResendPasswordParams(email: 'email');

    test('should return base entity when resend password successfully',
        () async {
      // arrrange
      when(dataSource.resendPassword(tParams))
          .thenAnswer((_) async => tBaseModel);

      //act
      final result = await repositoryImpl.resendPassword(tParams);

      //assert
      expect(result, const Right(tBaseEntity));
    });

    test('should return ServerFailure when resend password failed', () async {
      // arrrange
      when(dataSource.resendPassword(tParams)).thenThrow(ServerException());

      //act
      final result = await repositoryImpl.resendPassword(tParams);

      //assert
      expect(result, const Left(ServerFailure()));
    });

    test('should return NetWorkFailure when device is offline', () async {
      // arrrange
      when(dataSource.resendPassword(tParams))
          .thenThrow(const SocketException('No Internet'));

      //act
      final result = await repositoryImpl.resendPassword(tParams);

      //assert
      expect(result, const Left(NetworkFailure()));
    });
  });
}

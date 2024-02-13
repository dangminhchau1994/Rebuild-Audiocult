import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/models/base/base_model.dart';
import 'package:app/data/repositories/create_new_password_repository_impl.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/usecases/create_new_password_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockCreateNewPasswordDataSource dataSource;
  late CreateNewPasswordRepositoryImpl repository;

  setUp(() {
    dataSource = MockCreateNewPasswordDataSource();
    repository = CreateNewPasswordRepositoryImpl(
      createNewPasswordDataSource: dataSource,
    );
  });

  group('createNewPassword', () {
    const tParams = CreateNewPasswordParams(
      accessToken: 'accessToken',
      newPassword: 'password',
      code: '123',
    );

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

    test('shoud return model when status is success', () async {
      //arrange
      when(dataSource.createNewPassword(any))
          .thenAnswer((_) async => tBaseModel);

      //act
      final result = await repository.createNewPassword(tParams);

      //assert
      expect(result, const Right(tBaseEntity));
    });

    test('should throw error when call api unsuccessfully', () async {
      //arrange
      when(dataSource.createNewPassword(any)).thenThrow(ServerException());

      //act
      final result = await repository.createNewPassword(tParams);

      //assert
      expect(result, const Left(ServerFailure()));
    });

    test('shoud throw network failure when device is offline', () async {
      //arrange
      when(dataSource.createNewPassword(any))
          .thenThrow(const SocketException('No Internet'));

      //act
      final result = await repository.createNewPassword(tParams);

      //assert
      expect(result, const Left(NetworkFailure(message: 'No Internet')));
    });
  });
}

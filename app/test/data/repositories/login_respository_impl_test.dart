import 'dart:io';

import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/models/login/login_model.dart';
import 'package:app/data/repositories/login_repository_impl.dart';
import 'package:app/domain/entities/login_entity.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockLoginDataSource dataSource;
  late LoginRepositoryImpl repository;

  setUp(() {
    dataSource = MockLoginDataSource();
    repository = LoginRepositoryImpl(loginDataSource: dataSource);
  });

  group('login', () {
    final tLoginParams = LoginParams(
      clientId: 'clientId',
      clientSecret: 'clientSecret',
      grantType: 'grantType',
      username: 'username',
      password: 'password',
    );

    const tLoginModel = LoginModel(
      accessToken: '357b3979817e4289f19a79b140914ff11dccc2c5',
      expiresIn: 86400000,
      tokenType: 'Bearer',
      scope: null,
      refreshToken: 'd0e8ec882bb6327bdcadc78f367b894e87df4b2c',
      userId: '3778',
    );

    const tLoginEntity = LoginEntity(
      accessToken: '357b3979817e4289f19a79b140914ff11dccc2c5',
      expiresIn: 86400000,
      tokenType: 'Bearer',
      scope: null,
      refreshToken: 'd0e8ec882bb6327bdcadc78f367b894e87df4b2c',
      userId: '3778',
    );

    test('should return login entity when login successfully', () async {
      // arrange
      when(dataSource.login(tLoginParams)).thenAnswer((_) async => tLoginModel);

      // act
      final result = await repository.login(tLoginParams);

      // assert
      expect(result, const Right(tLoginEntity));
    });

    test('should return server failure when login fails', () async {
      // arrange
      when(dataSource.login(tLoginParams)).thenThrow(ServerException());

      // act
      final result = await repository.login(tLoginParams);

      // assert
      expect(result, const Left(ServerFailure()));
    });

    test('should return network failure when device is offline', () async {
      // arrange
      when(dataSource.login(tLoginParams))
          .thenThrow(const SocketException('Device is offline'));

      // act
      final result = await repository.login(tLoginParams);

      // assert
      expect(result, const Left(NetworkFailure()));
    });
  });
}

import 'dart:io';

import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/models/logout/logout_model.dart';
import 'package:app/data/repositories/logout_repository_impl.dart';
import 'package:app/domain/entities/logout_entity.dart';
import 'package:app/domain/usecases/logout_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockLogoutDataSource mockLougoutDataSource;
  late LogoutRepositoryImpl logoutRepositoryImpl;

  setUp(() {
    mockLougoutDataSource = MockLogoutDataSource();
    logoutRepositoryImpl = LogoutRepositoryImpl(
      dataSource: mockLougoutDataSource,
    );
  });

  group('LogoutRepositoryImpl', () {
    const tLogoutModel = LogoutModel();
    const tLogoutEntity = LogoutEntity();
    const tParams = LogoutParams(
      clientId: AppConstants.clientId,
      clientSecret: AppConstants.clientSecret,
      token: 'token',
    );

    test('should return logout entity when call api successfully', () async {
      //arrange
      when(mockLougoutDataSource.logout(any))
          .thenAnswer((_) async => tLogoutModel);

      //act
      final result = await logoutRepositoryImpl.logout(tParams);

      //assert
      expect(result, const Right(tLogoutEntity));
    });

    test('should return ServerFailure when call api unsuccessfully', () async {
      //arrange
      when(mockLougoutDataSource.logout(any)).thenThrow(ServerException());

      //act
      final result = await logoutRepositoryImpl.logout(tParams);

      //assert
      expect(result, const Left(ServerFailure()));
    });

    test('shoud return NetworkFailure when device is offline', () async {
      //arrange
      when(mockLougoutDataSource.logout(any))
          .thenThrow(const SocketException('No Internet'));

      //act
      final result = await logoutRepositoryImpl.logout(tParams);

      //assert
      expect(result, const Left(NetworkFailure()));
    });
  });
}

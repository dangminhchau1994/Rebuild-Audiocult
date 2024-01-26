import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/models/roles/roles_model.dart';
import 'package:app/data/repositories/role_repository_impl.dart';
import 'package:app/domain/entities/roles_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockRolesDataSource mockRolesDataSource;
  late RoleRepositoryImpl repositoryImpl;

  setUp(() {
    mockRolesDataSource = MockRolesDataSource();
    repositoryImpl = RoleRepositoryImpl(rolesDataSource: mockRolesDataSource);
  });

  group('get roles', () {
    const tRoleModels = RolesModel(data: [
      RoleModel(
        userGroupId: "1",
        title: "Admin",
      ),
      RoleModel(
        userGroupId: "2",
        title: "User",
      )
    ]);

    const tRoleEntity = RolesEntity(data: [
      RoleEntity(
        userGroupId: "1",
        title: "Admin",
      ),
      RoleEntity(
        userGroupId: "2",
        title: "User",
      )
    ]);

    test(
      'should return role entity when the response is successfully',
      () async {
        //Arrange
        when(mockRolesDataSource.getRoles())
            .thenAnswer((_) async => tRoleModels);
        //Act
        final result = await repositoryImpl.getRoles();
        //Assert
        expect(result, equals(const Right(tRoleEntity)));
      },
    );

    test(
      'should return server failure when the response is unsuccessully',
      () async {
        //Arrange
        when(mockRolesDataSource.getRoles()).thenThrow(ServerException());
        //Act
        final result = await repositoryImpl.getRoles();
        //Assert
        expect(result, equals(const Left(ServerFailure())));
      },
    );

    test('should return network failure when the device is offline', () async {
      //Arrange
      when(mockRolesDataSource.getRoles())
          .thenThrow(const SocketException('Devece is offline'));
      //Act
      final result = await repositoryImpl.getRoles();
      //Assert
      expect(result, equals(const Left(NetworkFailure())));
    });
  });
}

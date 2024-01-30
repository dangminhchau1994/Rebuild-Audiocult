import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/datasources/roles_data_source.dart';
import 'package:app/domain/entities/roles_entity.dart';
import 'package:app/domain/repositories/get_roles_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GetRolesRepository)
class RoleRepositoryImpl implements GetRolesRepository {
  final RolesDataSource rolesDataSource;

  RoleRepositoryImpl({required this.rolesDataSource});

  @override
  Future<Either<Failure, RolesEntity>> getRoles(String token) async {
    try {
      final result = await rolesDataSource.getRoles(token);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(NetworkFailure());
    }
  }
}

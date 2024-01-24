import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/roles_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetRolesRepository {
  Future<Either<Failure, RolesEntity>> getRoles();
}

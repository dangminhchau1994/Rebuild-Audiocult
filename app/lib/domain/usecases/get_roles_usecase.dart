import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/roles_entity.dart';
import 'package:app/domain/repositories/get_roles_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetRolesUseCase {
  final GetRolesRepository rolesRepository;

  GetRolesUseCase({required this.rolesRepository});

  Future<Either<Failure, RolesEntity>> execute(String token) {
    return rolesRepository.getRoles(token);
  }
}

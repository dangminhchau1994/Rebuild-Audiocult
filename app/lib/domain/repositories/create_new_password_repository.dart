import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/usecases/create_new_password_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class CreateNewPasswordRepository {
  Future<Either<Failure, BaseEntity>> createNewPassword(
    CreateNewPasswordParams params,
  );
}

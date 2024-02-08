import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/usecases/resend_password_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class ResendPasswordRepository {
  Future<Either<Failure, BaseEntity>> resendPassword(
    ResendPasswordParams params,
  );
}

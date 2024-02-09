import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/usecases/resend_code_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class ResendCodeRepository {
  Future<Either<Failure, BaseEntity>> resendCode(
    ResendCodeParams params,
  );
}

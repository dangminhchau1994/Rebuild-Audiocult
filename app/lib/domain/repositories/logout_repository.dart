import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/logout_entity.dart';
import 'package:app/domain/usecases/logout_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class LogoutRepository {
  Future<Either<Failure, LogoutEntity>> logout(LogoutParams params);
}

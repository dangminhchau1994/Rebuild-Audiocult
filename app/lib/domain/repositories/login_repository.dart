import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/login_entity.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginEntity>> login(LoginParams params);
}

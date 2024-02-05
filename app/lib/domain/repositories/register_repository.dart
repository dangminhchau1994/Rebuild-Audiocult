import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/register_entity.dart';
import 'package:app/domain/usecases/register_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class RegisterRepository {
  Future<Either<Failure, RegisterEntity>> register(RegisterParams params);
}

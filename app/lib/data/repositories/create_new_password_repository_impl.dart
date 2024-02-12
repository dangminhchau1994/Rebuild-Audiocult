import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/datasources/create_new_password_datasource.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/repositories/create_new_password_repository.dart';
import 'package:app/domain/usecases/create_new_password_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CreateNewPasswordRepository)
class CreateNewPasswordRepositoryImpl implements CreateNewPasswordRepository {
  final CreateNewPasswordDataSource createNewPasswordDataSource;

  CreateNewPasswordRepositoryImpl({required this.createNewPasswordDataSource});

  @override
  Future<Either<Failure, BaseEntity>> createNewPassword(
    CreateNewPasswordParams params,
  ) async {
    try {
      final result =
          await createNewPasswordDataSource.createNewPassword(params);
      return Right(result.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on SocketException catch (e) {
      return Left(NetworkFailure(message: e.message));
    }
  }
}

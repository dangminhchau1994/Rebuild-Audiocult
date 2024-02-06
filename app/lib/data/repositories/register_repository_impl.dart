import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/datasources/register_data_source.dart';
import 'package:app/domain/entities/register_entity.dart';
import 'package:app/domain/repositories/register_repository.dart';
import 'package:app/domain/usecases/register_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RegisterRepository)
class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterDataSource dataSource;

  RegisterRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, RegisterEntity>> register(
      RegisterParams params) async {
    try {
      final result = await dataSource.register(params);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(NetworkFailure());
    }
  }
}

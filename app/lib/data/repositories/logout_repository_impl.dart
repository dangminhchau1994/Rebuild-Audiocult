import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/datasources/logout_data_source.dart';
import 'package:app/domain/entities/logout_entity.dart';
import 'package:app/domain/repositories/logout_repository.dart';
import 'package:app/domain/usecases/logout_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LogoutRepository)
class LogoutRepositoryImpl implements LogoutRepository {
  final LogoutDataSource dataSource;

  const LogoutRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, LogoutEntity>> logout(LogoutParams params) async {
    try {
      final result = await dataSource.logout(params);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(NetworkFailure());
    }
  }
}

import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/datasources/resend_password_data_source.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/repositories/resend_password_repository.dart';
import 'package:app/domain/usecases/resend_password_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ResendPasswordRepository)
class ResendPasswordRepositoryImpl implements ResendPasswordRepository {
  final ResendPasswordDataSource dataSource;

  ResendPasswordRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, BaseEntity>> resendPassword(
    ResendPasswordParams param,
  ) async {
    try {
      final result = await dataSource.resendPassword(param);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(NetworkFailure());
    }
  }
}

import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/datasources/resend_code_data_source.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/repositories/resend_code_repository.dart';
import 'package:app/domain/usecases/resend_code_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ResendCodeRepository)
class ResendCodeRepositoryImpl implements ResendCodeRepository {
  final ResendCodeDataSource resendCodeDataSource;

  ResendCodeRepositoryImpl({required this.resendCodeDataSource});

  @override
  Future<Either<Failure, BaseEntity>> resendCode(
    ResendCodeParams params,
  ) async {
    try {
      final result = await resendCodeDataSource.resendCode(params);
      return Right(result.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on SocketException {
      return const Left(NetworkFailure());
    }
  }
}

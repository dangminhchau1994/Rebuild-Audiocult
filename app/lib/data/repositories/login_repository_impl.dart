import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/datasources/login_data_source.dart';
import 'package:app/domain/entities/login_entity.dart';
import 'package:app/domain/repositories/login_repository.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource loginDataSource;

  LoginRepositoryImpl({required this.loginDataSource});

  @override
  Future<Either<Failure, LoginEntity>> login(LoginParams params) async {
    try {
      final user = await loginDataSource.login(params);
      return Right(user.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(NetworkFailure());
    }
  }
}

import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/login_entity.dart';
import 'package:app/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  final LoginRepository repository;

  LoginUseCase({required this.repository});

  Future<Either<Failure, LoginEntity>> execute(LoginParams params) {
    return repository.login(params);
  }
}

class LoginParams {
  final String? clientId;
  final String? clientSecret;
  final String? grantType;
  final String? username;
  final String? password;

  LoginParams({
    this.clientId,
    this.clientSecret,
    this.grantType,
    this.username,
    this.password,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['client_id'] = clientId;
    data['client_secret'] = clientSecret;
    data['grant_type'] = grantType;
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}

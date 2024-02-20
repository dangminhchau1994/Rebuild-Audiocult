import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/logout_entity.dart';
import 'package:app/domain/repositories/logout_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class LogoutUsecase {
  final LogoutRepository repository;

  const LogoutUsecase({required this.repository});

  Future<Either<Failure, LogoutEntity>> logout(LogoutParams params) {
    return repository.logout(params);
  }
}

class LogoutParams {
  final String? clientId;
  final String? clientSecret;
  final String? token;

  const LogoutParams({
    this.clientId,
    this.clientSecret,
    this.token,
  });

  Map<String, dynamic> toJson() {
    return {
      'client_id': clientId,
      'client_secret': clientSecret,
      'token': token,
    };
  }
}

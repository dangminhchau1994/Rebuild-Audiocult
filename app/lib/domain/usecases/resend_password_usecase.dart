import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/repositories/resend_password_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class ResendPasswordUseCase {
  final ResendPasswordRepository repository;

  ResendPasswordUseCase({required this.repository});

  Future<Either<Failure, BaseEntity>> resendPassword(
    ResendPasswordParams params,
  ) {
    return repository.resendPassword(params);
  }
}

class ResendPasswordParams {
  String? email;
  String? token;

  ResendPasswordParams({
    this.email,
    this.token,
  });

  Map<String, dynamic> toJson() => {
        "val[email]": email,
        "token": token,
      };
}

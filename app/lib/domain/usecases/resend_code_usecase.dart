import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/repositories/resend_code_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class ResendCodeUseCase {
  final ResendCodeRepository repository;

  ResendCodeUseCase({required this.repository});

  Future<Either<Failure, BaseEntity>> resendCode(
      ResendCodeParams params) async {
    return await repository.resendCode(params);
  }
}

class ResendCodeParams {
  final String? code;
  final String? token;

  ResendCodeParams({
    this.code,
    this.token,
  });

  Map<String, dynamic> toJson() => {
        "val[code]": code,
        "token": token,
      };
}

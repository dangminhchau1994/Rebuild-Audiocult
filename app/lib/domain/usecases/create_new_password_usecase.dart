import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/repositories/create_new_password_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class CreateNewPasswordUseCase {
  final CreateNewPasswordRepository repository;

  CreateNewPasswordUseCase({required this.repository});

  Future<Either<Failure, BaseEntity>> createNewPassword(
    CreateNewPasswordParams params,
  ) {
    return repository.createNewPassword(params);
  }
}

class CreateNewPasswordParams {
  final String? accessToken;
  final String? newPassword;
  final String? code;

  const CreateNewPasswordParams({
    this.accessToken,
    this.newPassword,
    this.code,
  });

  Map<String, dynamic> toJson() {
    return {
      'val[newpassword]': newPassword,
      'val[code]': code,
    };
  }
}

import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/profile_entity.dart';
import 'package:app/domain/repositories/get_profile_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetProfileUseCase {
  final GetProfileRepository getProfileRepository;

  GetProfileUseCase({required this.getProfileRepository});

  Future<Either<Failure, ProfileEntity>> getProfile(GetProfileParams params) =>
      getProfileRepository.getProfile(params);
}

class GetProfileParams {
  final String? data;
  final int? userId;

  GetProfileParams({
    this.data,
    this.userId,
  });

  Map<String, dynamic> toJson() {
    return {'data': data};
  }
}

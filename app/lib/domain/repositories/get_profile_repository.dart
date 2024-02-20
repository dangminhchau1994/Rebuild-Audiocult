import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/profile/profile_entity.dart';
import 'package:app/domain/usecases/get_profile_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class GetProfileRepository {
  Future<Either<Failure, ProfileEntity>> getProfile(GetProfileParams params);
}

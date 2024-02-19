import 'dart:io';
import 'package:app/core/constants/app_hive_key.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/core/services/hive_service.dart';
import 'package:app/data/datasources/get_profile_datasource.dart';
import 'package:app/data/models/profile/profile_model.dart';
import 'package:app/domain/entities/profile_entity.dart';
import 'package:app/domain/repositories/get_profile_repository.dart';
import 'package:app/domain/usecases/get_profile_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GetProfileRepository)
class GetProfileRepositoryImpl implements GetProfileRepository {
  final GetProfileDataSource getProfielDataSource;
  final HiveService hiveService;

  GetProfileRepositoryImpl({
    required this.getProfielDataSource,
    required this.hiveService,
  });

  @override
  Future<Either<Failure, ProfileEntity>> getProfile(
      GetProfileParams params) async {
    try {
      final result = await getProfielDataSource.getProfile(params);
      await hiveService.putData(
        AppHiveKey.hiveProfileBox,
        AppHiveKey.userProfile,
        result,
      );
      return Right(result.toEntity());
    } on ServerException {
      final result = await hiveService.getData(
        AppHiveKey.hiveProfileBox,
        AppHiveKey.userProfile,
      ) as ProfileModel;
      if (result.data != null) {
        return Right(result.toEntity());
      } else {
        return const Left(ServerFailure());
      }
    } on SocketException {
      final result = await hiveService.getData(
        AppHiveKey.hiveProfileBox,
        AppHiveKey.userProfile,
      ) as ProfileModel;
      if (result.data != null) {
        return Right(result.toEntity());
      } else {
        return const Left(NetworkFailure());
      }
    }
  }
}

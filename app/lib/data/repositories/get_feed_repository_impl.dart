import 'dart:io';

import 'package:app/core/constants/app_hive_key.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/core/services/hive_service.dart';
import 'package:app/data/datasources/get_feeds_datasource.dart';
import 'package:app/domain/entities/feed/feed_entity.dart';
import 'package:app/domain/repositories/get_feeds_repository.dart';
import 'package:app/domain/usecases/get_feeds_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GetFeedsRepository)
class GetFeedRepositoryImpl implements GetFeedsRepository {
  final GetFeedDataSource dataSource;
  final HiveService hiveService;

  const GetFeedRepositoryImpl({
    required this.dataSource,
    required this.hiveService,
  });

  @override
  Future<Either<Failure, FeedEntity>> getFeeds(GetFeedParams params) async {
    try {
      final result = await dataSource.getFeeds(params);
      await hiveService.putData(
        AppHiveKey.hiveFeedBox,
        AppHiveKey.feed,
        result.toEntity(),
      );
      return Right(result.toEntity());
    } on ServerException {
      final result = await hiveService.getData(
        AppHiveKey.hiveFeedBox,
        AppHiveKey.feed,
      ) as FeedEntity;
      if (result.data != null) {
        return Right(result);
      } else {
        return const Left(ServerFailure());
      }
    } on SocketException {
      final result = await hiveService.getData(
        AppHiveKey.hiveFeedBox,
        AppHiveKey.feed,
      ) as FeedEntity;
      if (result.data != null) {
        return Right(result);
      } else {
        return const Left(NetworkFailure());
      }
    }
  }
}

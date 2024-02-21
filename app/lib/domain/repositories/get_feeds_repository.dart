import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/feed/feed_entity.dart';
import 'package:app/domain/usecases/get_feeds_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class GetFeedsRepository {
  Future<Either<Failure, FeedEntity>> getFeeds(GetFeedParams params);
}

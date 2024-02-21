import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/feed/feed_entity.dart';
import 'package:app/domain/repositories/get_feeds_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetFeedsUseCase {
  final GetFeedsRepository repository;

  GetFeedsUseCase({required this.repository});

  Future<Either<Failure, FeedEntity>> getFeeds(GetFeedParams params) async {
    return await repository.getFeeds(params);
  }
}

class GetFeedParams {
  final String? userId;
  final int? page;
  final int? limit;
  final int? lastFeedId;
  final int? eventId;

  GetFeedParams({
    this.userId,
    this.page,
    this.limit,
    this.lastFeedId,
    this.eventId,
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'page': page,
      'limit': limit,
      'lastFeedId': lastFeedId,
      'eventId': eventId,
    };
  }
}

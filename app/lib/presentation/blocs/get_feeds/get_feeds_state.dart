import 'package:app/domain/entities/feed/feed_entity.dart';
import 'package:equatable/equatable.dart';

abstract class GetFeedState extends Equatable {
  const GetFeedState();
}

class GetFeedsInitial extends GetFeedState {
  @override
  List<Object> get props => [];
}

class GetFeedLoading extends GetFeedState {
  @override
  List<Object> get props => [];
}

class GetFeedsSuccess extends GetFeedState {
  final List<FeedDataEntity> feeds;

  const GetFeedsSuccess({required this.feeds});

  @override
  List<Object> get props => [feeds];
}

class GetFeedsFailure extends GetFeedState {
  final String? message;

  const GetFeedsFailure({this.message});

  @override
  List<Object> get props => [message ?? ''];
}

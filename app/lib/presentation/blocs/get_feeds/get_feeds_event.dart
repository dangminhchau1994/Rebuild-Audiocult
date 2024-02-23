import 'package:app/domain/usecases/get_feeds_usecase.dart';
import 'package:equatable/equatable.dart';

abstract class GetFeedsEvent extends Equatable {
  const GetFeedsEvent();
}

class GetFeedsPagination extends GetFeedsEvent {
  final GetFeedParams params;

  const GetFeedsPagination({required this.params});

  @override
  List<Object> get props => [params];
}

import 'package:app/domain/usecases/get_feeds_usecase.dart';
import 'package:app/presentation/blocs/get_feeds/get_feeds_event.dart';
import 'package:app/presentation/blocs/get_feeds/get_feeds_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetFeedsBloc extends Bloc<GetFeedsEvent, GetFeedState> {
  GetFeedsBloc({required this.getFeedsUseCase}) : super(GetFeedsInitial()) {
    on<GetFeedsPagination>(_getFeedsPagination);
  }

  final GetFeedsUseCase getFeedsUseCase;

  void _getFeedsPagination(
    GetFeedsPagination event,
    Emitter<GetFeedState> emit,
  ) async {
    emit(GetFeedLoading());
    final result = await getFeedsUseCase.getFeeds(event.params);
    result.fold(
      (error) => emit(GetFeedsFailure(message: error.message ?? '')),
      (data) => emit(GetFeedsSuccess(feeds: data.data ?? [])),
    );
  }
}

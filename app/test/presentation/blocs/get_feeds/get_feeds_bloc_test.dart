import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/feed/feed_entity.dart';
import 'package:app/domain/usecases/get_feeds_usecase.dart';
import 'package:app/presentation/blocs/get_feeds/get_feeds_bloc.dart';
import 'package:app/presentation/blocs/get_feeds/get_feeds_event.dart';
import 'package:app/presentation/blocs/get_feeds/get_feeds_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetFeedsUseCase mockGetFeedsUseCase;
  late GetFeedsBloc bloc;

  setUp(() {
    mockGetFeedsUseCase = MockGetFeedsUseCase();
    bloc = GetFeedsBloc(getFeedsUseCase: mockGetFeedsUseCase);
  });

  group('getFeedsBloc', () {
    final tFeedEntity = FeedEntity();
    test('get feeds initial state', () {
      expect(bloc.state, GetFeedsInitial());
    });

    blocTest(
      'should emit [GetFeedsLoading, GetFeedsSuccess] when gotten data successfully',
      build: () {
        when(mockGetFeedsUseCase.getFeeds(any))
            .thenAnswer((_) async => Right(tFeedEntity));
        return bloc;
      },
      act: (bloc) => bloc.add(GetFeedsPagination(params: GetFeedParams())),
      expect: () => [
        GetFeedLoading(),
        GetFeedsSuccess(feeds: tFeedEntity.data ?? []),
      ],
    );

    blocTest(
      'should emit [GetFeedsLoading, GetFeedsFailure] when gotten data successfully',
      build: () {
        when(mockGetFeedsUseCase.getFeeds(any))
            .thenAnswer((_) async => const Left(ServerFailure()));
        return bloc;
      },
      act: (bloc) => bloc.add(GetFeedsPagination(params: GetFeedParams())),
      expect: () => [
        GetFeedLoading(),
        const GetFeedsFailure(),
      ],
    );
  });
}

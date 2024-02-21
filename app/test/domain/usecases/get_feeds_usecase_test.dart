import 'package:app/domain/entities/feed/feed_entity.dart';
import 'package:app/domain/usecases/get_feeds_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetFeedsRepository mockGetFeedsRepository;
  late GetFeedsUseCase getFeedsUseCase;

  setUp(() {
    mockGetFeedsRepository = MockGetFeedsRepository();
    getFeedsUseCase = GetFeedsUseCase(repository: mockGetFeedsRepository);
  });

  group('getFeedUseCase', () {
    final tParams = GetFeedParams();
    final tFeedEntity = FeedEntity();

    test('should get feed entity from the repository', () async {
      //arrange
      when(mockGetFeedsRepository.getFeeds(any))
          .thenAnswer((_) async => Right(tFeedEntity));

      //act
      final result = await getFeedsUseCase.getFeeds(tParams);

      //assert
      expect(result, Right(tFeedEntity));
    });
  });
}

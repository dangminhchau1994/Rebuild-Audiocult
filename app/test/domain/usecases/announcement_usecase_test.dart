import 'package:app/domain/entities/announcement/announcement_entity.dart';
import 'package:app/domain/usecases/announcement_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockAnnouncementRepository mockAnnouncementRepository;
  late AnnouncementUsecase announcementUsecase;

  setUp(() {
    mockAnnouncementRepository = MockAnnouncementRepository();
    announcementUsecase = AnnouncementUsecase(
      repository: mockAnnouncementRepository,
    );
  });

  test('should return data from repository', () async {
    final tEntity = AnnouncementEntity();
    final tParams = AnnouncementParams();

    // arrange
    when(mockAnnouncementRepository.getAnnouncement(any))
        .thenAnswer((_) async => Right(tEntity));

    // act
    final result = await announcementUsecase.getAnnouncement(tParams);

    // assert
    expect(result, Right(tEntity));
  });
}

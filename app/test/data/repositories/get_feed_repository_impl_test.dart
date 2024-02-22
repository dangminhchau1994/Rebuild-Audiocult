import 'dart:io';

import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/feed/feed_model.dart';
import 'package:app/data/repositories/get_feed_repository_impl.dart';
import 'package:app/domain/entities/feed/feed_entity.dart';
import 'package:app/domain/usecases/get_feeds_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetFeedDataSource mockGetFeedDataSource;
  late MockHiveService mockHiveService;
  late GetFeedRepositoryImpl getFeedRepositoryImpl;

  setUp(() {
    mockGetFeedDataSource = MockGetFeedDataSource();
    mockHiveService = MockHiveService();
    getFeedRepositoryImpl = GetFeedRepositoryImpl(
      dataSource: mockGetFeedDataSource,
      hiveService: mockHiveService,
    );
  });

  group('GetFeedRepositoryImpl', () {
    final tParams = GetFeedParams(page: 1, limit: 10);
    final tFeedModel = FeedModel(
      status: 'success',
      message: "",
      error: null,
      data: [
        FeedModelData(
          feedId: "7644",
          appId: "0",
          privacy: "0",
          privacyComment: "0",
          typeId: "user_status",
          userId: "3778",
          parentUserId: "0",
          itemId: "217",
          timeStamp: "1687053346",
          feedReference: "0",
          parentFeedId: "0",
          parentModuleId: null,
          timeUpdate: "1687053346",
          content: null,
          totalView: "0",
          userName: "dangminhchau",
          fullName: "dangminhchau",
          gender: "0",
          userImage: null,
          userGroupId: "15",
          languageId: "en",
          feedTimeStamp: "1687053346",
          canPostComment: true,
          feedStatus: "jdndndnd",
          feedTitle: "",
          feedLink: "https://audiocult.net/dangminhchau/?status-id=217",
          totalComment: "0",
          feedTotalLike: "1",
          feedIsLiked: true,
          feedIcon:
              "https://audiocult.net/PF.Base/theme/frontend/default/style/default/image/misc/application_add.png",
          enableLike: true,
          commentTypeId: "user_status",
          likeTypeId: "user_status",
          totalFriendsTagged: "0",
          canLike: true,
          canComment: true,
          canShare: true,
          totalAction: 3,
          statusBackground:
              "https://audiocult.net/PF.Site/Apps/p-status-background/assets/images/default-collection/bg08-min.png",
          parentFeed: null,
          lastIcon: IconModel(
            likeTypeId: "12",
            imagePath:
                "https://audiocult.net/PF.Base/file/pic/photo/609b364894e98.svg",
            countIcon: "1",
          ),
          icons: [
            IconModel(
              likeTypeId: "12",
              imagePath:
                  "https://audiocult.net/PF.Base/file/pic/photo/609b364894e98.svg",
              countIcon: "1",
            )
          ],
        )
      ],
    );

    final tFeedEntity = FeedEntity(
      status: 'success',
      message: "",
      error: null,
      data: [
        FeedDataEntity(
          feedId: "7644",
          appId: "0",
          privacy: "0",
          privacyComment: "0",
          typeId: "user_status",
          userId: "3778",
          parentUserId: "0",
          itemId: "217",
          timeStamp: "1687053346",
          feedReference: "0",
          parentFeedId: "0",
          parentModuleId: null,
          timeUpdate: "1687053346",
          content: null,
          totalView: "0",
          userName: "dangminhchau",
          fullName: "dangminhchau",
          gender: "0",
          userImage: null,
          userGroupId: "15",
          languageId: "en",
          feedTimeStamp: "1687053346",
          canPostComment: true,
          feedStatus: "jdndndnd",
          feedTitle: "",
          feedLink: "https://audiocult.net/dangminhchau/?status-id=217",
          totalComment: "0",
          feedTotalLike: "1",
          feedIsLiked: true,
          feedIcon:
              "https://audiocult.net/PF.Base/theme/frontend/default/style/default/image/misc/application_add.png",
          enableLike: true,
          commentTypeId: "user_status",
          likeTypeId: "user_status",
          totalFriendsTagged: "0",
          canLike: true,
          canComment: true,
          canShare: true,
          totalAction: 3,
          statusBackground:
              "https://audiocult.net/PF.Site/Apps/p-status-background/assets/images/default-collection/bg08-min.png",
          parentFeed: null,
          lastIcon: IconEntity(
            likeTypeId: "12",
            imagePath:
                "https://audiocult.net/PF.Base/file/pic/photo/609b364894e98.svg",
            countIcon: "1",
          ),
          icons: [
            IconEntity(
              likeTypeId: "12",
              imagePath:
                  "https://audiocult.net/PF.Base/file/pic/photo/609b364894e98.svg",
              countIcon: "1",
            )
          ],
        )
      ],
    );

    test('should return feed entity when call api successfully', () async {
      //arrange
      when(mockGetFeedDataSource.getFeeds(any))
          .thenAnswer((_) async => tFeedModel);

      //act
      final result = await getFeedRepositoryImpl.getFeeds(tParams);

      //assert
      expect(result, Right(tFeedEntity));
    });

    test('should return local feed entity when throw server exception',
        () async {
      //arrange
      when(mockGetFeedDataSource.getFeeds(any)).thenThrow(ServerException());
      when(mockHiveService.getData(any, any))
          .thenAnswer((_) async => tFeedEntity);

      final result = await getFeedRepositoryImpl.getFeeds(tParams);
      //assert
      expect(result, Right(tFeedEntity));
    });

    test('should return local feed entity when throw network exception',
        () async {
      //arrange
      when(mockGetFeedDataSource.getFeeds(any))
          .thenThrow(const SocketException('No Internet Connection'));
      when(mockHiveService.getData(any, any))
          .thenAnswer((_) async => tFeedEntity);

      final result = await getFeedRepositoryImpl.getFeeds(tParams);
      //assert
      expect(result, Right(tFeedEntity));
    });
  });
}

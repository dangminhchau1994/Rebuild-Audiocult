import 'dart:convert';
import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/data/datasources/get_feeds_datasource.dart';
import 'package:app/data/models/feed/feed_model.dart';
import 'package:app/domain/usecases/get_feeds_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDioClient mockDioClient;
  late GetFeedDataSourceImpl dataSource;

  setUp(() {
    mockDioClient = MockDioClient();
    dataSource = GetFeedDataSourceImpl(client: mockDioClient);
  });

  group('getFeeds', () {
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

    test('should get feed model when call api successfully', () async {
      // arrange
      when(mockDioClient.options)
          .thenReturn(BaseOptions(baseUrl: ApiEndpoints.baseUrl));
      when(
        mockDioClient.get(
          ApiEndpoints.getFeeds,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: jsonDecode(readJson('dummy_feed_response.json')),
          requestOptions: RequestOptions(),
        ),
      );

      // act
      final result = await dataSource.getFeeds(tParams);

      // assert
      expect(result, isA<FeedModel>());
    });

    test('should throw exception when call api unsuccessfully', () {
      // arrange
      when(mockDioClient.options)
          .thenReturn(BaseOptions(baseUrl: ApiEndpoints.baseUrl));
      when(
        mockDioClient.get(
          ApiEndpoints.getFeeds,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: jsonDecode(readJson('dummy_feed_response_failed.json')),
          requestOptions: RequestOptions(),
        ),
      );

      //act
      final result = dataSource.getFeeds(tParams);

      //assert
      expect(result, throwsA(isA<Exception>()));
    });
  });
}

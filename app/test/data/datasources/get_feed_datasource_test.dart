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

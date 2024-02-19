import 'dart:convert';
import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/datasources/get_profile_datasource.dart';
import 'package:app/data/models/profile/profile_model.dart';
import 'package:app/domain/usecases/get_profile_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDioClient mockDioClient;
  late GetProfileDataSourceImpl getProfileDataSourceImpl;

  setUp(() {
    mockDioClient = MockDioClient();
    getProfileDataSourceImpl = GetProfileDataSourceImpl(client: mockDioClient);
  });

  group('profileDataSource', () {
    final tParams = GetProfileParams(
      data: 'info',
      userId: 3778,
    );
    const tProfileModel = ProfileModel(
      status: "success",
      message: "",
      error: null,
      data: ProfileModelData(
        userId: "3778",
        title: "Entertainer",
        userName: "dangminhchau",
        fullName: "dangminhchau",
        gender: null,
        userImage: null,
      ),
    );

    test('return profile data when call api successfully', () async {
      // arrange
      when(mockDioClient.options).thenReturn(
        BaseOptions(baseUrl: ApiEndpoints.baseUrl),
      );
      when(
        mockDioClient.get(
          any,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: jsonDecode(
            readJson('dummy_profile_response.json'),
          ),
        ),
      );

      // act
      final result = await getProfileDataSourceImpl.getProfile(tParams);

      // assert
      expect(result, tProfileModel);
    });

    test('throw exception when call api failed', () async {
      // arrange
      when(mockDioClient.options).thenReturn(
        BaseOptions(baseUrl: ApiEndpoints.baseUrl),
      );
      when(
        mockDioClient.get(
          any,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 400,
          data: jsonDecode(
            readJson('dummy_profile_response_failed.json'),
          ),
        ),
      );

      // act
      final result = getProfileDataSourceImpl.getProfile(tParams);

      // assert
      expect(result, throwsA(isA<ServerException>()));
    });
  });
}

import 'dart:convert';
import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/datasources/logout_data_source.dart';
import 'package:app/data/models/logout/logout_model.dart';
import 'package:app/domain/usecases/logout_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDioClient mockDioClient;
  late LogoutDataSourceImpl dataSource;

  setUp(() {
    mockDioClient = MockDioClient();
    dataSource = LogoutDataSourceImpl(client: mockDioClient);
  });

  group('logoutDataSource', () {
    const tLogoutModel = LogoutModel();
    const tParams = LogoutParams(
      clientId: AppConstants.clientId,
      clientSecret: AppConstants.clientSecret,
      token: 'token',
    );

    test(
      'should return logout model when call api successfully',
      () async {
        // arrange
        when(mockDioClient.options)
            .thenReturn(BaseOptions(baseUrl: ApiEndpoints.baseUrl));
        when(mockDioClient.post(ApiEndpoints.logout, data: anyNamed('data')))
            .thenAnswer(
          (_) async => Response(
            statusCode: 200,
            requestOptions: RequestOptions(),
            data: jsonDecode(
              readJson('dummy_logout_response.json'),
            ),
          ),
        );

        // act
        final result = await dataSource.logout(tParams);

        // assert
        expect(result, tLogoutModel);
      },
    );

    test('should throw server exception when call api unsuccessfully', () {
      // arrange
      when(mockDioClient.options)
          .thenReturn(BaseOptions(baseUrl: ApiEndpoints.baseUrl));
      when(mockDioClient.post(ApiEndpoints.logout, data: anyNamed('data')))
          .thenThrow(Exception());

      // act
      final result = dataSource.logout(tParams);

      // assert
      expect(result, throwsA(isA<ServerException>()));
    });
  });
}

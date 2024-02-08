import 'dart:convert';
import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/datasources/resend_password_data_source.dart';
import 'package:app/data/models/base/base_model.dart';
import 'package:app/domain/usecases/resend_password_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDioClient client;
  late ResendPasswordDataSourceImpl dataSource;

  setUp(() {
    client = MockDioClient();
    dataSource = ResendPasswordDataSourceImpl(client: client);
  });

  group('resendPassword', () {
    final tParams = ResendPasswordParams(
      email: 'email',
      token: '99bfe43aebc3ecd36e9ba2022e1c016d6e9cc8cc',
    );
    test('should return base model when call api successfully', () async {
      // arrange
      when(client.options).thenReturn(
        BaseOptions(baseUrl: ApiEndpoints.baseUrl),
      );
      when(
        client.post(
          ApiEndpoints.resendPassword,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: jsonDecode(readJson('dummy_base_response.json')),
          requestOptions: RequestOptions(),
          statusCode: 200,
        ),
      );

      // act
      final result = await dataSource.resendPassword(tParams);

      // assert
      expect(result, isA<BaseModel>());
    });

    test('should throw error when call api unsuccessfully', () {
      //arrange
      when(client.options)
          .thenReturn(BaseOptions(baseUrl: ApiEndpoints.baseUrl));
      when(client.post(
        ApiEndpoints.resendPassword,
        data: anyNamed('data'),
        queryParameters: anyNamed('queryParameters'),
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 400,
        ),
      );

      //act
      final result = dataSource.resendPassword(tParams);

      //assert
      expect(result, throwsA(isA<ServerException>()));
    });
  });
}

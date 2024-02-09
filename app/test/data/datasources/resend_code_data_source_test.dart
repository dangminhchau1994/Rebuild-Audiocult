import 'dart:convert';

import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/datasources/resend_code_data_source.dart';
import 'package:app/data/models/base/base_model.dart';
import 'package:app/domain/usecases/resend_code_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDioClient mockDioClient;
  late ResendCodeDataSourceImpl dataSource;

  setUp(() {
    mockDioClient = MockDioClient();
    dataSource = ResendCodeDataSourceImpl(client: mockDioClient);
  });

  group('resendCode', () {
    final tResendCodeParams = ResendCodeParams(code: 'code', token: 'token');
    test('should return base model when call api successfully', () async {
      //arrange
      when(mockDioClient.options).thenReturn(BaseOptions());
      when(
        mockDioClient.post(
          ApiEndpoints.resendCode,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        ),
      ).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(),
          data: jsonDecode(readJson('dummy_base_response.json')),
          statusCode: 200,
        ),
      );

      //act
      final result = await dataSource.resendCode(tResendCodeParams);

      //assert
      expect(result, isA<BaseModel>());
    });

    test('should throw exception when call api unsuccessfully ', () {
      //arrange
      when(mockDioClient.options).thenReturn(BaseOptions());
      when(
        mockDioClient.post(
          ApiEndpoints.resendCode,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        ),
      ).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        response: Response(
          requestOptions: RequestOptions(path: ''),
          data: jsonDecode(readJson('dummy_base_response.json')),
          statusCode: 400,
        ),
      ));

      //act
      final result = dataSource.resendCode(tResendCodeParams);

      //assert
      expect(result, throwsA(isA<ServerException>()));
    });
  });
}

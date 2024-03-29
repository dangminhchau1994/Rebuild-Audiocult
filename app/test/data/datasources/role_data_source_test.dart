import 'dart:convert';
import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/datasources/roles_data_source.dart';
import 'package:app/data/models/roles/roles_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDioClient mockClient;
  late RolesDataSourceImpl dataSource;

  setUp(() {
    mockClient = MockDioClient();
    dataSource = RolesDataSourceImpl(client: mockClient);
  });

  const tToken = '12c16cea0e5f1a59fdec7e0595c40960efce99fe';

  group('get roles', () {
    test(
      'should return role model when the response is successfully',
      () async {
        //Arrange
        when(mockClient.get(
          ApiEndpoints.getRoles,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        )).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(),
            data: jsonDecode(readJson('dummy_roles_response.json')),
            statusCode: 200,
          ),
        );
        //Act
        final result = await dataSource.getRoles(tToken);
        //Assert
        expect(result, isA<RolesModel>());
      },
    );

    test(
      'should return server exception when the response is unsuccessully',
      () async {
        //Arrange
        when(mockClient.get(ApiEndpoints.getRoles)).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(),
            data: 'Something went wrong',
            statusCode: 404,
          ),
        );
        //Act
        final result = dataSource.getRoles(tToken);
        //Assert
        expect(result, throwsA(isA<ServerException>()));
      },
    );
  });
}

import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/datasources/roles_data_source.dart';
import 'package:app/data/models/roles_model.dart';
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

  group('get roles', () {
    test(
      'should return role model when the response is successfully',
      () async {
        //Arrange
        when(mockClient.get(ApiEndpoints.getRoles)).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(),
            data: readJson('dummy_roles_response.json'),
            statusCode: 200,
          ),
        );
        //Act
        final result = await dataSource.getRoles();
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
        final result = dataSource.getRoles();
        //Assert
        expect(result, throwsA(isA<ServerException>()));
      },
    );
  });
}

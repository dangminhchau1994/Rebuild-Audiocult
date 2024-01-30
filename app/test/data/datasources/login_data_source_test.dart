import 'dart:convert';

import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/datasources/login_data_source.dart';
import 'package:app/data/models/login/login_model.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDioClient client;
  late LoginDataSourceImpl dataSource;

  setUp(() {
    client = MockDioClient();
    dataSource = LoginDataSourceImpl(client: client);
  });

  group('login', () {
    final tLoginParams = LoginParams(
      clientId: 'clientId',
      clientSecret: 'clientSecret',
      grantType: 'grantType',
      username: 'username',
      password: 'password',
    );

    test(
      'should return login model when the response is successfully',
      () async {
        //Arrange
        when(client.post(
          ApiEndpoints.authenticate,
          data: tLoginParams.toJson(),
        )).thenAnswer(
          (_) async => Response(
            statusCode: 200,
            data: jsonDecode(readJson('dummy_login_response.json')),
            requestOptions: RequestOptions(),
          ),
        );

        //Act
        final result = await dataSource.login(tLoginParams);

        //Assert
        expect(result, isA<LoginModel>());
      },
    );

    test(
      'should return server exception when the response is unsuccessully',
      () async {
        //Arrange
        when(client.post(
          ApiEndpoints.authenticate,
          data: tLoginParams.toJson(),
        )).thenAnswer(
          (_) async => Response(
            statusCode: 400,
            requestOptions: RequestOptions(),
          ),
        );

        //Act
        final result = dataSource.login(tLoginParams);

        //Assert
        expect(result, throwsA(isA<ServerException>()));
      },
    );
  });
}

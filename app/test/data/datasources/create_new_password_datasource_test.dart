import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/datasources/create_new_password_datasource.dart';
import 'package:app/data/models/base/base_model.dart';
import 'package:app/domain/usecases/create_new_password_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDioClient client;
  late CreateNewPasswordDataSourceImpl dataSource;

  setUp(() {
    client = MockDioClient();
    dataSource = CreateNewPasswordDataSourceImpl(client: client);
  });

  const tParams = CreateNewPasswordParams(
    newPassword: 'password',
    code: 'code',
    accessToken: 'token',
  );

  group('createNewPasswordDataSource', () {
    test('shoud return model when status is success', () async {
      //arrange
      when(
        client.post(
          ApiEndpoints.createNewPassword,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: {'status': AppConstants.successStatus},
          requestOptions: RequestOptions(),
        ),
      );

      //act
      final result = await dataSource.createNewPassword(tParams);

      //assert
      expect(result, isA<BaseModel>());
    });

    test('should throw error when call api unsuccessfully', () {
      //arrange
      when(
        client.post(
          ApiEndpoints.createNewPassword,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: {
            'status': AppConstants.errorStatus,
            'error': {'message': 'error'}
          },
          requestOptions: RequestOptions(),
        ),
      );

      //act
      final result = dataSource.createNewPassword(tParams);

      //assert
      expect(result, throwsA(isA<ServerException>()));
    });
  });
}

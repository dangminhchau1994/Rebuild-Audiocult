import 'dart:convert';

import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/datasources/places_data_source.dart';
import 'package:app/data/models/places/places_model.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDioClient client;
  late PlaceDataSourceImpl dataSource;

  setUp(() {
    client = MockDioClient();
    dataSource = PlaceDataSourceImpl(client: client);
  });

  group('places data source', () {
    final tGetPlacesParams = GetPlacesParams(
      input: 'hochiminh',
      types: 'address',
      languageCode: 'en',
      apiKey: 'AIzaSyCq_ewBkTd_Ptlva35RYyHJU7oBYCGhMpY',
      sessionToken: 'sdfsdfsdf',
    );

    test('should return places model when the response is successfully',
        () async {
      //Arrange
      when(client.options)
          .thenReturn(BaseOptions(baseUrl: ApiEndpoints.placeUrl));
      when(client.get(
        ApiEndpoints.getPlaces,
        queryParameters: tGetPlacesParams.toJson(),
      )).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          data: jsonDecode(readJson('dummy_places_response.json')),
          requestOptions: RequestOptions(),
        ),
      );

      //Act
      final result = await dataSource.getPlaces(tGetPlacesParams);

      //Assert
      expect(result, isA<List<PlacesModel>>());
    });

    test('should return server exception when the response is unsuccessully',
        () {
      //Arrange
      when(client.options)
          .thenReturn(BaseOptions(baseUrl: ApiEndpoints.placeUrl));
      when(client.get(
        ApiEndpoints.getPlaces,
        queryParameters: tGetPlacesParams.toJson(),
      )).thenAnswer(
        (_) async => Response(
          statusCode: 400,
          requestOptions: RequestOptions(),
        ),
      );

      //Act
      final result = dataSource.getPlaces(tGetPlacesParams);

      //Assert
      expect(result, throwsA(isA<ServerException>()));
    });
  });
}

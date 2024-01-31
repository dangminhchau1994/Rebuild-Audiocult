import 'dart:io';

import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/models/places/places_model.dart';
import 'package:app/data/repositories/places_repository_impl.dart';
import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockPlacesDataSource mockPlacesDataSource;
  late GetPlacesRepositoryImpl getPlacesRepositoryImpl;

  setUp(() {
    mockPlacesDataSource = MockPlacesDataSource();
    getPlacesRepositoryImpl = GetPlacesRepositoryImpl(
      dataSource: mockPlacesDataSource,
    );
  });

  test('should return places entity when datasource call api  successfully',
      () async {
    final tGetPlacesParams = GetPlacesParams(
      input: 'hochiminh',
      types: 'address',
      languageCode: 'en',
      apiKey: 'AIzaSyCq_ewBkTd_Ptlva35RYyHJU7oBYCGhMpY',
      sessionToken: 'sdfsdfsdf',
    );

    const tPlacesModel = [
      PlacesModel(
        placeId: 'ChIJa3E1AQAvdTERYALZ9aYvLLE',
        description:
            '49C Đường Lê Quang Kim, Phường 8, Quận 8, Ho Chi Minh City, Vietnam',
      )
    ];

    const tPlacesEntity = [
      PlaceSuggestionEntity(
        placeId: 'ChIJa3E1AQAvdTERYALZ9aYvLLE',
        description:
            '49C Đường Lê Quang Kim, Phường 8, Quận 8, Ho Chi Minh City, Vietnam',
      )
    ];
    // arrange
    when(mockPlacesDataSource.getPlaces(tGetPlacesParams))
        .thenAnswer((_) async => tPlacesModel);

    //act
    final result = await getPlacesRepositoryImpl.getPlaces(tGetPlacesParams);

    //assert
    expect(result, const Right(tPlacesEntity));
  });

  test('should return server failure when datasource call api failed',
      () async {
    final tGetPlacesParams = GetPlacesParams(
      input: 'hochiminh',
      types: 'address',
      languageCode: 'en',
      apiKey: 'sdfsdfsdf',
      sessionToken: 'sdfsdfsdf',
    );

    // arrange
    when(mockPlacesDataSource.getPlaces(tGetPlacesParams))
        .thenThrow(ServerException());

    //act
    final result = await getPlacesRepositoryImpl.getPlaces(tGetPlacesParams);

    //assert
    expect(result, const Left(ServerFailure()));
  });

  test('should return network failure when device is offline', () async {
    final tGetPlacesParams = GetPlacesParams(
      input: 'hochiminh',
      types: 'address',
      languageCode: 'en',
      apiKey: 'sdfsdfsdf',
      sessionToken: 'sdfsdfsdf',
    );

    // arrange
    when(mockPlacesDataSource.getPlaces(tGetPlacesParams))
        .thenThrow(const SocketException(''));

    //act
    final result = await getPlacesRepositoryImpl.getPlaces(tGetPlacesParams);

    //assert
    expect(result, const Left(NetworkFailure()));
  });
}

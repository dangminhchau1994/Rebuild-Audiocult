import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetPlacesRepository repository;
  late GetPlacesUseCase useCase;

  setUp(() {
    repository = MockGetPlacesRepository();
    useCase = GetPlacesUseCase(repository: repository);
  });

  test('should get places entity from the repository', () async {
    final tGetPlacesParams = GetPlacesParams(
      input: 'hochiminh',
      types: 'address',
      languageCode: 'en',
      apiKey: 'AIzaSyCq_ewBkTd_Ptlva35RYyHJU7oBYCGhMpY',
      sessionToken: 'sdfsdfsdf',
    );

    const tPlacesEntity = [
      PlaceSuggestionEntity(
        placeId:
            'ElhIbyBDaGkgTWluaCBTYXJhbmkgUm9hZCwgS2Fua2FyaWEgRXN0YXRlcywgUGFyayBTdHJlZXQgYXJlYSwgS29sa2F0YSwgV2VzdCBCZW5nYWwsIEluZGlhIi4qLAoUChIJ-Xr1ahF3AjoRPYSQx_SUpVkSFAoSCUn2XN0QdwI6EWpVu6SzUbbo',
        description:
            'Ho Chi Minh Sarani Road, Kankaria Estates, Park Street area',
      )
    ];
    // arrange
    when(repository.getPlaces(tGetPlacesParams))
        .thenAnswer((_) async => const Right(tPlacesEntity));

    // act
    final result = await useCase.execute(tGetPlacesParams);

    // assert
    expect(result, const Right(tPlacesEntity));
  });
}

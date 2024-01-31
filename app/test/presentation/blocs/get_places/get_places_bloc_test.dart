import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:app/presentation/blocs/get_places/get_places_bloc.dart';
import 'package:app/presentation/blocs/get_places/get_places_event.dart';
import 'package:app/presentation/blocs/get_places/get_places_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetPlacesUseCase mockGetPlacesUseCase;
  late GetPlacesBloc bloc;

  setUp(() {
    mockGetPlacesUseCase = MockGetPlacesUseCase();
    bloc = GetPlacesBloc(useCase: mockGetPlacesUseCase);
  });

  test('initialState should be GetPlacesInitial', () {
    // assert
    expect(bloc.state, equals(GetPlacesInitial()));
  });

  final tGetPlacesParams = GetPlacesParams(
    input: 'hochiminh',
    types: 'address',
    languageCode: 'en',
    apiKey: 'AIzaSyCq_ewBkTd_Ptlva35RYyHJU7oBYCGhMpY',
    sessionToken: 'sdfsdfsdf',
  );

  const tPlacesEntity = [
    PlaceSuggestionEntity(
      placeId: 'ChIJa3E1AQAvdTERYALZ9aYvLLE',
      description:
          '49C Đường Lê Quang Kim, Phường 8, Quận 8, Ho Chi Minh City, Vietnam',
    )
  ];

  blocTest(
    'should return [GetPlacesLoading, GetPlacesLoaded] when data is gotten successfully',
    build: () {
      when(mockGetPlacesUseCase.execute(tGetPlacesParams))
          .thenAnswer((_) async => const Right(tPlacesEntity));
      return bloc;
    },
    act: (bloc) => bloc.add(OnSearchPlaces(params: tGetPlacesParams)),
    expect: () => [
      GetPlacesLoading(),
      const GetPlacesLoaded(places: tPlacesEntity),
    ],
  );

  blocTest(
    'should return [GetPlacesLoading, GetPlacesError] when data is gotten successfully',
    build: () {
      when(mockGetPlacesUseCase.execute(tGetPlacesParams)).thenAnswer(
          (_) async => const Left(ServerFailure(message: 'Server Failure')));
      return bloc;
    },
    act: (bloc) => bloc.add(OnSearchPlaces(params: tGetPlacesParams)),
    expect: () => [
      GetPlacesLoading(),
      const GetPlacesError(message: 'Server Failure'),
    ],
  );
}

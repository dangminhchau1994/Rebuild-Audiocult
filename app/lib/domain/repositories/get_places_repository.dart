import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class GetPlacesRepository {
  Future<Either<Failure, List<PlaceSuggestionEntity>>> getPlaces(
    GetPlacesParams params,
  );
}

import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:app/domain/repositories/get_places_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetPlacesUseCase {
  final GetPlacesRepository repository;

  GetPlacesUseCase({required this.repository});

  Future<Either<Failure, List<PlaceSuggestionEntity>>> execute(
    GetPlacesParams params,
  ) {
    return repository.getPlaces(params);
  }
}

class GetPlacesParams {
  final String? input;
  final String? types;
  final String? languageCode;
  final String? apiKey;
  final String? sessionToken;

  GetPlacesParams({
    this.input,
    this.types,
    this.languageCode,
    this.apiKey,
    this.sessionToken,
  });

  Map<String, dynamic> toJson() => {
        'input': input,
        'types': types,
        'language': languageCode,
        'key': apiKey,
        'sessiontoken': sessionToken,
      };
}

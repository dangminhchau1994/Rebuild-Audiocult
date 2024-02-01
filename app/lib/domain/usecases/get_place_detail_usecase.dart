import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:app/domain/repositories/get_places_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetPlaceDetailUseCase {
  final GetPlacesRepository repository;

  GetPlaceDetailUseCase({required this.repository});

  Future<Either<Failure, PlaceSuggestionEntity>> execute(
    GetPlaceDetailParams params,
  ) {
    return repository.getPlaceDetail(params);
  }
}

class GetPlaceDetailParams {
  final String? placeId;
  final String? fields;
  final String? apiKey;
  final String? sessionToken;

  GetPlaceDetailParams({
    this.placeId,
    this.fields,
    this.apiKey,
    this.sessionToken,
  });

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'fields': fields,
        'key': apiKey,
        'sessiontoken': sessionToken,
      };
}

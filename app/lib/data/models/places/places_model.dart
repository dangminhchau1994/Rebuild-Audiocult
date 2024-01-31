import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'places_model.g.dart';

@JsonSerializable()
class PlacesModel extends PlaceSuggestionEntity {
  @JsonKey(name: 'place_id')
  final String? placeId;
  final String? description;

  const PlacesModel({
    this.placeId,
    this.description,
  }) : super(
          placeId: placeId,
          description: description,
        );

  factory PlacesModel.fromJson(Map<String, dynamic> json) =>
      _$PlacesModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesModelToJson(this);

  PlaceSuggestionEntity toEntity() => PlaceSuggestionEntity(
        placeId: placeId,
        description: description,
      );
}

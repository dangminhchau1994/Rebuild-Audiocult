// ignore_for_file: must_be_immutable

import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'places_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PlacesModel extends PlaceSuggestionEntity {
  final String? placeId;
  final String? description;
  String? city;
  String? zipCode;
  String? fullAdress;
  double? latitude;
  double? longitude;

  PlacesModel({
    this.placeId,
    this.description,
    this.city,
    this.zipCode,
    this.fullAdress,
    this.latitude,
    this.longitude,
  }) : super(
          placeId: placeId,
          description: description,
          city: city,
          zipCode: zipCode,
          fullAdress: fullAdress,
          latitude: latitude,
          longitude: longitude,
        );

  factory PlacesModel.fromJson(Map<String, dynamic> json) =>
      _$PlacesModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesModelToJson(this);

  PlaceSuggestionEntity toEntity() => PlaceSuggestionEntity(
        placeId: placeId,
        description: description,
        city: city,
        zipCode: zipCode,
        fullAdress: fullAdress,
        latitude: latitude,
        longitude: longitude,
      );
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesModel _$PlacesModelFromJson(Map<String, dynamic> json) => PlacesModel(
      placeId: json['place_id'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$PlacesModelToJson(PlacesModel instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'description': instance.description,
    };

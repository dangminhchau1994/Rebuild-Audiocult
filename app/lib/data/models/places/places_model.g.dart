// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesModel _$PlacesModelFromJson(Map<String, dynamic> json) => PlacesModel(
      placeId: json['place_id'] as String?,
      description: json['description'] as String?,
      city: json['city'] as String?,
      zipCode: json['zip_code'] as String?,
      fullAdress: json['full_adress'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PlacesModelToJson(PlacesModel instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'description': instance.description,
      'city': instance.city,
      'zip_code': instance.zipCode,
      'full_adress': instance.fullAdress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

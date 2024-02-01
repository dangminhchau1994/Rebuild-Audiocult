import 'package:equatable/equatable.dart';

class PlaceSuggestionEntity extends Equatable {
  final String? placeId;
  final String? description;
  final String? city;
  final String? zipCode;
  final String? fullAdress;
  final double? latitude;
  final double? longitude;

  const PlaceSuggestionEntity({
    this.placeId,
    this.description,
    this.city,
    this.zipCode,
    this.fullAdress,
    this.latitude,
    this.longitude,
  });

  @override
  List<Object?> get props => [
        placeId,
        description,
        city,
        zipCode,
        fullAdress,
        latitude,
        longitude,
      ];
}

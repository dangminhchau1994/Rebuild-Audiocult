import 'package:equatable/equatable.dart';

class PlaceSuggestionEntity extends Equatable {
  final String? placeId;
  final String? description;

  const PlaceSuggestionEntity({
    this.placeId,
    this.description,
  });

  @override
  List<Object?> get props => [
        placeId,
        description,
      ];
}

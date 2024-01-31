import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:equatable/equatable.dart';

abstract class GetPlacesState extends Equatable {
  const GetPlacesState();

  @override
  List<Object> get props => [];
}

class GetPlacesInitial extends GetPlacesState {}

class GetPlacesLoading extends GetPlacesState {}

class GetPlacesLoaded extends GetPlacesState {
  final List<PlaceSuggestionEntity> places;

  const GetPlacesLoaded({required this.places});

  @override
  List<Object> get props => [places];
}

class GetPlacesError extends GetPlacesState {
  final String message;

  const GetPlacesError({required this.message});

  @override
  List<Object> get props => [message];
}

import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:equatable/equatable.dart';

abstract class GetPlacesEvent extends Equatable {
  const GetPlacesEvent();

  @override
  List<Object> get props => [];
}

class OnSearchPlaces extends GetPlacesEvent {
  final GetPlacesParams params;

  const OnSearchPlaces({required this.params});

  @override
  List<Object> get props => [params];
}
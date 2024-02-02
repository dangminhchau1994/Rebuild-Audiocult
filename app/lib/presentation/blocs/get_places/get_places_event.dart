import 'package:app/domain/usecases/get_place_detail_usecase.dart';
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

class OnGetLatLng extends GetPlacesEvent {
  final String description;

  const OnGetLatLng({required this.description});

  @override
  List<Object> get props => [description];
}

class OnGetPlaceDetail extends GetPlacesEvent {
  final GetPlaceDetailParams params;

  const OnGetPlaceDetail({required this.params});

  @override
  List<Object> get props => [params];
}

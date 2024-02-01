import 'package:app/domain/usecases/get_place_detail_usecase.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:app/presentation/blocs/get_places/get_places_event.dart';
import 'package:app/presentation/blocs/get_places/get_places_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class GetPlacesBloc extends Bloc<GetPlacesEvent, GetPlacesState> {
  GetPlacesBloc({
    required this.useCase,
    required this.getPlaceDetailUseCase,
  }) : super(GetPlacesInitial()) {
    on<OnGetPlaceDetail>(_getPlaceDetail);
    on<OnSearchPlaces>(
      _searchPlaces,
      transformer: debounceSequential(
        const Duration(milliseconds: 300),
      ),
    );
  }

  final GetPlacesUseCase useCase;
  final GetPlaceDetailUseCase getPlaceDetailUseCase;

  void _searchPlaces(
    OnSearchPlaces event,
    Emitter<GetPlacesState> emit,
  ) async {
    emit(GetPlacesLoading());
    final result = await useCase.execute(event.params);
    result.fold(
      (failure) => emit(GetPlacesError(message: failure.message ?? '')),
      (places) => emit(GetPlacesLoaded(places: places)),
    );
  }

  void _getPlaceDetail(
    OnGetPlaceDetail event,
    Emitter<GetPlacesState> emit,
  ) async {
    emit(GetPlacesLoading());
    final result = await getPlaceDetailUseCase.execute(event.params);
    result.fold(
      (failure) => emit(GetPlacesError(message: failure.message ?? '')),
      (place) => emit(GetPlaceDetailLoaded(place: place)),
    );
  }

  EventTransformer<Event> debounceSequential<Event>(Duration duration) {
    return (events, mapper) =>
        events.debounceTime(duration).asyncExpand(mapper);
  }
}

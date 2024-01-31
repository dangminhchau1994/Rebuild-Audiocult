import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:app/presentation/blocs/get_places/get_places_event.dart';
import 'package:app/presentation/blocs/get_places/get_places_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetPlacesBloc extends Bloc<GetPlacesEvent, GetPlacesState> {
  GetPlacesBloc({required this.useCase}) : super(GetPlacesInitial()) {
    on<OnSearchPlaces>(_searchPlaces);
  }

  final GetPlacesUseCase useCase;

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
}

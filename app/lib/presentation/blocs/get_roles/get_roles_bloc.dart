import 'package:app/domain/usecases/get_roles_usecase.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_event.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetRolesBloc extends Bloc<GetRolesEvent, GetRolesState> {
  GetRolesBloc({required this.useCase}) : super(GetRolesEmpty()) {
    on<GetRolesEvent>(_getRoles);
  }

  final GetRolesUseCase useCase;

  Future<void> _getRoles(
    GetRolesEvent event,
    Emitter<GetRolesState> emit,
  ) async {
    emit(GetRolesLoading());
    final result = await useCase.execute();
    result.fold(
      (failure) => emit(GetRolesError(message: failure.message ?? '')),
      (data) => emit(GetRolesLoaded(data: data)),
    );
  }
}

import 'package:app/domain/usecases/get_profile_usecase.dart';
import 'package:app/presentation/blocs/profile/get_profile_event.dart';
import 'package:app/presentation/blocs/profile/get_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProfileBloc extends Bloc<GetProfileEvent, GetProfileState> {
  GetProfileBloc({
    required this.getProfileUseCase,
  }) : super(GetProfileInitial()) {
    on<OnGetProfile>(_getProfile);
  }

  final GetProfileUseCase getProfileUseCase;

  void _getProfile(
    OnGetProfile event,
    Emitter<GetProfileState> emit,
  ) async {
    emit(GetProfileLoading());
    final result = await getProfileUseCase.getProfile(event.params);
    result.fold(
      (err) => emit(GetProfileError(message: err.message)),
      (data) => emit(GetProfileSuccess(data: data)),
    );
  }
}

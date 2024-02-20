import 'package:app/domain/usecases/logout_usecase.dart';
import 'package:app/presentation/blocs/logout/logout_event.dart';
import 'package:app/presentation/blocs/logout/logout_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc({required this.logoutUsecase}) : super(LogoutInitial()) {
    on<OnLogOut>(_logout);
  }

  final LogoutUsecase logoutUsecase;

  void _logout(OnLogOut event, Emitter<LogoutState> emit) async {
    emit(LogoutLoading());
    final result = await logoutUsecase.logout(event.params);
    result.fold(
      (failure) => emit(LogoutFailure(message: failure.message)),
      (data) => emit(LogoutSuccess(data: data)),
    );
  }
}

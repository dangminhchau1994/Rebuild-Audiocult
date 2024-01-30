import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/presentation/blocs/login/login_event.dart';
import 'package:app/presentation/blocs/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.useCase}) : super(LoginInitial());

  final LoginUseCase useCase;

  Future<void> login(LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    final result = await useCase.execute(event.params);
    result.fold(
      (failure) => emit(LoginError(message: failure.message ?? '')),
      (data) => emit(LoginSuccess(data: data)),
    );
  }
}

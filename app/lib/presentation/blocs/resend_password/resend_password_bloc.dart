import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/domain/usecases/resend_password_usecase.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_event.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ResendPasswordBloc extends Bloc<RendPasswordEvent, ResendPasswordState> {
  ResendPasswordBloc({
    required this.loginUseCase,
    required this.resendPasswordUseCase,
  }) : super(ResendPasswordInitial()) {
    on<OnResendPasswordCredentials>(_onResendPasswordCredentials);
    on<OnSubmitResendPassword>(_onSubmitResendPassword);
  }

  final ResendPasswordUseCase resendPasswordUseCase;
  final LoginUseCase loginUseCase;

  void _onResendPasswordCredentials(
    OnResendPasswordCredentials event,
    Emitter<ResendPasswordState> emit,
  ) async {
    emit(ResendPasswordLoading());
    final result = await loginUseCase.execute(event.params);
    result.fold(
      (failure) => emit(ResendPasswordFailure(failure.message ?? '')),
      (data) => add(
        OnSubmitResendPassword(
          params: ResendPasswordParams(
            email: event.params.username,
            token: data.accessToken ?? '',
          ),
        ),
      ),
    );
  }

  void _onSubmitResendPassword(
    OnSubmitResendPassword event,
    Emitter<ResendPasswordState> emit,
  ) async {
    emit(ResendPasswordLoading());
    final result = await resendPasswordUseCase.resendPassword(event.params);
    result.fold(
      (failure) => emit(ResendPasswordFailure(failure.message ?? '')),
      (success) => emit(ResendPasswordSuccess(success)),
    );
  }
}

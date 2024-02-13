import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/domain/usecases/resend_code_usecase.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_event.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ResendCodeBloc extends Bloc<ResendCodeEvent, ResendCodeState> {
  ResendCodeBloc({
    required this.loginUseCase,
    required this.resendCodeUseCase,
  }) : super(ResendCodeInitial()) {
    on<OnResendCodeCredentials>(_onResendCodeCredentials);
    on<OnSubmitResendCode>(_onSubmitResendCode);
  }

  final LoginUseCase loginUseCase;
  final ResendCodeUseCase resendCodeUseCase;

  void _onResendCodeCredentials(
    OnResendCodeCredentials event,
    Emitter<ResendCodeState> emit,
  ) async {
    emit(ResendCodeLoading());
    final result = await loginUseCase.execute(event.params);
    result.fold(
      (failure) => emit(ResendCodeFailure(failure.message ?? '')),
      (data) => add(
        OnSubmitResendCode(
          ResendCodeParams(
            token: data.accessToken,
            code: event.params.code,
          ),
        ),
      ),
    );
  }

  void _onSubmitResendCode(
    OnSubmitResendCode event,
    Emitter<ResendCodeState> emit,
  ) async {
    emit(ResendCodeLoading());
    final result = await resendCodeUseCase.resendCode(event.params);
    result.fold(
      (failure) => emit(ResendCodeFailure(failure.message ?? '')),
      (data) => emit(ResendCodeSuccess(data)),
    );
  }
}

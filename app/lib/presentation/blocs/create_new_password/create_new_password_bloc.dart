import 'package:app/domain/usecases/create_new_password_usecase.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/presentation/blocs/create_new_password/create_new_password_event.dart';
import 'package:app/presentation/blocs/create_new_password/create_new_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateNewPasswordBloc
    extends Bloc<CreateNewPasswordEvent, CreateNewPasswordState> {
  CreateNewPasswordBloc({
    required this.createNewPasswordUseCase,
    required this.loginUseCase,
  }) : super(CreateNewPasswordInitial()) {
    on<OnCreateNewPasswordCredentials>(_onCreatePasswordCredentials);
    on<OnSubmitCreateNewPassword>(_onSubmitCreateNewPassword);
  }

  final LoginUseCase loginUseCase;
  final CreateNewPasswordUseCase createNewPasswordUseCase;

  void _onCreatePasswordCredentials(
    OnCreateNewPasswordCredentials event,
    Emitter<CreateNewPasswordState> emit,
  ) async {
    emit(CreateNewPasswordLoading());
    final result = await loginUseCase.execute(event.params);
    result.fold(
      (failure) => emit(CreateNewPasswordFailure(message: failure.message)),
      (data) => add(
        OnSubmitCreateNewPassword(
          params: CreateNewPasswordParams(
            accessToken: data.accessToken,
            newPassword: event.params.password,
            code: event.params.code,
          ),
        ),
      ),
    );
  }

  void _onSubmitCreateNewPassword(
    OnSubmitCreateNewPassword event,
    Emitter<CreateNewPasswordState> emit,
  ) async {
    emit(CreateNewPasswordLoading());
    final result =
        await createNewPasswordUseCase.createNewPassword(event.params);
    result.fold(
      (failure) => emit(CreateNewPasswordFailure(message: failure.message)),
      (data) => emit(CreateNewPasswordSuccess(data: data)),
    );
  }
}

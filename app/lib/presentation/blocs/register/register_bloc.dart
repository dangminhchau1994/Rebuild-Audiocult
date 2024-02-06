import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/domain/usecases/register_usecase.dart';
import 'package:app/presentation/blocs/register/register_event.dart';
import 'package:app/presentation/blocs/register/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({
    required this.useCase,
    required this.loginUseCase,
  }) : super(RegisterEmpty()) {
    on<GetCredentialsAndRegister>(_getCredential);
    on<RegisterSubmit>(_register);
  }

  final RegisterUseCase useCase;
  final LoginUseCase loginUseCase;

  void _getCredential(
    GetCredentialsAndRegister event,
    Emitter<RegisterState> emit,
  ) async {
    emit(RegisterLoading());
    final loginResult = await loginUseCase.execute(event.loginParams);
    loginResult.fold(
      (failure) => emit(RegisterError(message: failure.message ?? '')),
      (data) => add(
        RegisterSubmit(
          params: RegisterParams(
            accessToken: data.accessToken,
            valRole: event.registerParams.valRole,
            valFullName: event.registerParams.valFullName,
            valUserName: event.registerParams.valUserName,
            valCityLocation: event.registerParams.valCityLocation,
            valCountryIso: event.registerParams.valCountryIso,
            valRegisterLocationLat: event.registerParams.valRegisterLocationLat,
            valRegisterLocationLng: event.registerParams.valRegisterLocationLng,
            valEmail: event.registerParams.valEmail,
            valPassword: event.registerParams.valPassword,
          ),
        ),
      ),
    );
  }

  void _register(
    RegisterSubmit event,
    Emitter<RegisterState> emit,
  ) async {
    final result = await useCase.execute(event.params);
    result.fold(
      (failure) => emit(RegisterError(message: failure.message ?? '')),
      (data) => emit(RegisterSuccess(data: data)),
    );
  }
}

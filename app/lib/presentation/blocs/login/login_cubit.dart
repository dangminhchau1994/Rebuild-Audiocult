import 'package:app/presentation/blocs/login/login_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(const LoginCubitState());

  void onFullNameChanged(String fullName) {
    emit(state.copyWith(fullName: fullName));
  }

  void onPasswordChanged(String password) {
    emit(state.copyWith(password: password));
  }
}

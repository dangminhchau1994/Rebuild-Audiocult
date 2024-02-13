import 'package:app/presentation/blocs/create_new_password/create_new_password_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateNewPasswordCubit extends Cubit<CreateNewPasswordCubitState> {
  CreateNewPasswordCubit() : super(const CreateNewPasswordCubitState());

  void newPasswordChanged(String newPassword) {
    emit(state.copyWith(newPassword: newPassword));
  }

  void confirmPasswordChanged(String confirmPassword) {
    emit(state.copyWith(confirmPassword: confirmPassword));
  }
}

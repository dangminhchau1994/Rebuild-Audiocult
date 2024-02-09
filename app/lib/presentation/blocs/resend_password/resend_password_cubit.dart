import 'package:app/presentation/blocs/resend_password/resend_password_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ResendPasswordCubit extends Cubit<ResendPasswordCubitState> {
  ResendPasswordCubit() : super(ResendPasswordCubitState());

  void setEmail(String email) {
    emit(state.copyWith(email: email));
  }
}

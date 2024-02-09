import 'package:app/presentation/blocs/resend_code/resend_code_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ResendCodeCubit extends Cubit<ResendCodeCubitState> {
  ResendCodeCubit() : super(ResendCodeCubitState());

  void setCode(String code) {
    emit(state.copyWith(code: code));
  }
}

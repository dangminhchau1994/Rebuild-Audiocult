import 'package:app/presentation/blocs/register/register_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterCubit extends Cubit<RegisterCubitState> {
  RegisterCubit() : super(const RegisterCubitState());

  void updateFullAddress(String? fullAddress) {
    emit(state.copyWith(fullAddress: fullAddress));
  }
}

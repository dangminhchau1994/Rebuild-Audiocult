import 'package:app/presentation/blocs/register/register_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterCubit extends Cubit<RegisterCubitState> {
  RegisterCubit() : super(const RegisterCubitState());

  void updateRoleId(int? roleId) {
    emit(state.copyWith(roleId: roleId));
  }

  void updateFullName(String? fullName) {
    emit(state.copyWith(fullName: fullName));
  }

  void updateUserName(String? userName) {
    emit(state.copyWith(userName: userName));
  }

  void updateEmail(String? email) {
    emit(state.copyWith(email: email));
  }

  void updatePassword(String? password) {
    emit(state.copyWith(password: password));
  }

  void updateFullAddress(String? fullAddress) {
    emit(state.copyWith(fullAddress: fullAddress));
  }

  void updateLatLng(double? latitude, double? longitude) {
    emit(state.copyWith(latitude: latitude, longitude: longitude));
  }

  void updateZipCode(String? zipCode) {
    emit(state.copyWith(zipCode: zipCode));
  }

  void updateCity(String? city) {
    emit(state.copyWith(city: city));
  }
}

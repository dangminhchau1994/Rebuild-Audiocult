class RegisterCubitState {
  final String? fullAddress;

  const RegisterCubitState({
    this.fullAddress,
  });

  RegisterCubitState copyWith({
    String? fullAddress,
  }) {
    return RegisterCubitState(
      fullAddress: fullAddress ?? this.fullAddress,
    );
  }
}

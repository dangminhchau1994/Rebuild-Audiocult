class ResendPasswordCubitState {
  final String? email;

  ResendPasswordCubitState({
    this.email,
  });

  ResendPasswordCubitState copyWith({
    String? email,
  }) {
    return ResendPasswordCubitState(
      email: email ?? this.email,
    );
  }
}

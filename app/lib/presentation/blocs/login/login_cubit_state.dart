class LoginCubitState {
  final String? fullName;
  final String? password;

  const LoginCubitState({
    this.fullName,
    this.password,
  });

  LoginCubitState copyWith({
    String? fullName,
    String? password,
  }) {
    return LoginCubitState(
      fullName: fullName ?? this.fullName,
      password: password ?? this.password,
    );
  }
}

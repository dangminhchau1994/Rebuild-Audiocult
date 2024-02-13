class CreateNewPasswordCubitState {
  final String? newPassword;
  final String? confirmPassword;

  const CreateNewPasswordCubitState({
    this.newPassword,
    this.confirmPassword,
  });

  CreateNewPasswordCubitState copyWith({
    String? newPassword,
    String? confirmPassword,
  }) {
    return CreateNewPasswordCubitState(
      newPassword: newPassword ?? this.newPassword,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }
}

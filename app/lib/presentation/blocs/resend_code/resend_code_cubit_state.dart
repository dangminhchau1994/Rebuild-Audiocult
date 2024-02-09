class ResendCodeCubitState {
  final String? code;

  ResendCodeCubitState({this.code});

  ResendCodeCubitState copyWith({
    String? code,
  }) {
    return ResendCodeCubitState(
      code: code ?? this.code,
    );
  }
}

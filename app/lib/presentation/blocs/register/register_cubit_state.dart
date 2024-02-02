class RegisterCubitState {
  final int? roleId;
  final String? fullName;
  final String? userName;
  final String? fullAddress;
  final String? zipCode;
  final String? city;
  final double? latitude;
  final double? longitude;
  final String? email;
  final String? password;

  const RegisterCubitState({
    this.roleId,
    this.fullName,
    this.userName,
    this.fullAddress,
    this.zipCode,
    this.city,
    this.latitude,
    this.longitude,
    this.email,
    this.password,
  });

  RegisterCubitState copyWith({
    int? roleId,
    String? fullName,
    String? userName,
    String? fullAddress,
    String? zipCode,
    String? city,
    double? latitude,
    double? longitude,
    String? email,
    String? password,
  }) {
    return RegisterCubitState(
      roleId: roleId ?? this.roleId,
      fullName: fullName ?? this.fullName,
      userName: userName ?? this.userName,
      fullAddress: fullAddress ?? this.fullAddress,
      zipCode: zipCode ?? this.zipCode,
      city: city ?? this.city,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

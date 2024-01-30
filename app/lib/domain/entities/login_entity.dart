import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String? accessToken;
  final int? expiresIn;
  final String? tokenType;
  final dynamic scope;
  final String? refreshToken;
  final String? userId;

  const LoginEntity({
    this.accessToken,
    this.expiresIn,
    this.tokenType,
    this.scope,
    this.refreshToken,
    this.userId,
  });

  @override
  List<Object?> get props => [
        accessToken,
        expiresIn,
        tokenType,
        scope,
        refreshToken,
        userId,
      ];
}

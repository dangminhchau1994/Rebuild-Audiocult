import 'package:app/domain/entities/login_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends LoginEntity {
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'expires_in')
  final int? expiresIn;
  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @override
  final dynamic scope;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;

  const LoginModel({
    this.accessToken,
    this.expiresIn,
    this.tokenType,
    this.scope,
    this.refreshToken,
    this.userId,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

  LoginEntity toEntity() => LoginEntity(
        accessToken: accessToken,
        expiresIn: expiresIn,
        tokenType: tokenType,
        scope: scope,
        refreshToken: refreshToken,
        userId: userId,
      );
}

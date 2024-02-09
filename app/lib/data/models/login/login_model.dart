import 'package:app/domain/entities/login_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LoginModel extends LoginEntity {
  final String? accessToken;
  final int? expiresIn;
  final String? tokenType;
  final dynamic scope;
  final String? refreshToken;
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

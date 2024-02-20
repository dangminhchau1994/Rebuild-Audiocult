import 'package:app/domain/entities/logout_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'logout_model.g.dart';

@JsonSerializable()
class LogoutModel extends LogoutEntity {
  const LogoutModel({
    bool? revoke,
  }) : super(revoke: revoke);

  factory LogoutModel.fromJson(Map<String, dynamic> json) =>
      _$LogoutModelFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutModelToJson(this);

  LogoutEntity toEntity() => LogoutEntity(revoke: revoke);
}

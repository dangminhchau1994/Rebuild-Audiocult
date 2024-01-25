import 'package:app/domain/entities/roles_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'roles_model.g.dart';

@JsonSerializable()
class RolesModel extends RolesEntity {
  @override
  final List<RoleModel>? data;

  const RolesModel({this.data}) : super(data: data);

  factory RolesModel.fromJson(Map<String, dynamic> json) =>
      _$RolesModelFromJson(json);

  Map<String, dynamic> toJson() => _$RolesModelToJson(this);

  RolesEntity toEntity() => RolesEntity(
        data: data?.map((e) => e.toEntity()).toList(),
      );
}

@JsonSerializable()
class RoleModel extends RoleEntity {
  @override
  @JsonKey(name: 'user_group_id')
  final String? userGroupId;
  @override
  final String? title;

  const RoleModel({
    this.userGroupId,
    this.title,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoleModelToJson(this);

  RoleEntity toEntity() => RoleEntity(
        userGroupId: userGroupId,
        title: title,
      );
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RolesModel _$RolesModelFromJson(Map<String, dynamic> json) => RolesModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RoleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RolesModelToJson(RolesModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

RoleModel _$RoleModelFromJson(Map<String, dynamic> json) => RoleModel(
      userGroupId: json['user_group_id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$RoleModelToJson(RoleModel instance) => <String, dynamic>{
      'user_group_id': instance.userGroupId,
      'title': instance.title,
    };

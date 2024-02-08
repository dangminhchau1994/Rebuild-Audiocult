// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseModel _$BaseModelFromJson(Map<String, dynamic> json) => BaseModel(
      message: json['message'] as String?,
      stausCode: json['staus_code'] as int?,
      isSuccess: json['is_success'] as bool?,
      error: json['error'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$BaseModelToJson(BaseModel instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'staus_code': instance.stausCode,
      'is_success': instance.isSuccess,
    };

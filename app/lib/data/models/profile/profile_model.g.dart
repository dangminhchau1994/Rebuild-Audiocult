// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      data: json['data'] == null
          ? null
          : ProfileModelData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
      message: json['message'] as String?,
      error: json['error'],
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
    };

ProfileModelData _$ProfileModelDataFromJson(Map<String, dynamic> json) =>
    ProfileModelData(
      userId: json['user_id'] as String?,
      userName: json['user_name'] as String?,
      fullName: json['full_name'] as String?,
      title: json['title'] as String?,
      gender: json['gender'] as String?,
      userImage: json['user_image'] as String?,
    );

Map<String, dynamic> _$ProfileModelDataToJson(ProfileModelData instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'full_name': instance.fullName,
      'gender': instance.gender,
      'user_image': instance.userImage,
      'title': instance.title,
    };

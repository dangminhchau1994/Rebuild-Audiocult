import 'package:app/domain/entities/profile_entity.dart';
import 'package:app/domain/entities/register_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'profile_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProfileModel extends ProfileEntity {
  const ProfileModel({
    this.data,
    this.status,
    this.message,
    this.error,
  }) : super(
          data: data,
          status: status,
          message: message,
          error: error,
        );

  final ProfileModelData? data;
  final String? status;
  final String? message;
  final dynamic error;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);

  ProfileEntity toEntity() => ProfileEntity(data: data);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProfileModelData extends ProfileDataEntity {
  const ProfileModelData({
    String? userId,
    String? userName,
    String? fullName,
    String? title,
    String? gender,
    String? userImage,
  }) : super(
          userId: userId,
          userName: userName,
          userImage: userImage,
          fullName: fullName,
          title: title,
          gender: gender,
        );

  factory ProfileModelData.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelDataToJson(this);

  ProfileDataEntity toEntity() => ProfileDataEntity(
        userId: userId,
        userName: userName,
        userImage: userImage,
        fullName: fullName,
        title: title,
        gender: gender,
      );
}

import 'package:app/domain/entities/register_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel extends RegisterEntity {
  final ProfileDataModel? data;

  const RegisterModel({this.data}) : super(data: data);

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProfileDataModel extends ProfileDataEntity {
  final bool? coverPhotoExists;
  final String? userId;
  final String? userGroupId;
  final String? userName;
  final String? fullName;
  final String? email;
  final String? gender;
  final String? birthday;
  final String? birthdaySearch;
  final String? countryIso;
  final String? languageId;
  final String? timeZone;
  final String? userImage;
  final bool? isOnline;
  final String? title;
  final bool? isFriend;
  final bool? isFriendOfFriend;
  final bool? isFriendRequest;
  final bool? blockable;
  final bool? isBlocked;
  final String? relationId;
  final String? relationWithId;
  final String? relationPhrase;
  final String? coverPhoto;
  final String? locationString;
  final int? totalSubscriptions;
  final int? totalSubscribers;
  final String? biography;
  final List<String>? favoriteGenresOfMusic;
  final List<String>? audioArtistCategory;
  final int? isSubscribed;
  final String? lat;
  final String? lng;
  final String? currency;
  final String? accessToken;
  final String? lastLogin;
  final String? joined;

  const ProfileDataModel({
    this.coverPhotoExists,
    this.userId,
    this.userGroupId,
    this.userName,
    this.fullName,
    this.email,
    this.gender,
    this.birthday,
    this.birthdaySearch,
    this.countryIso,
    this.languageId,
    this.timeZone,
    this.userImage,
    this.isOnline,
    this.title,
    this.isFriend,
    this.isFriendOfFriend,
    this.isFriendRequest,
    this.blockable,
    this.isBlocked,
    this.relationId,
    this.relationWithId,
    this.relationPhrase,
    this.coverPhoto,
    this.locationString,
    this.totalSubscriptions,
    this.totalSubscribers,
    this.biography,
    this.favoriteGenresOfMusic,
    this.audioArtistCategory,
    this.isSubscribed,
    this.lat,
    this.lng,
    this.currency,
    this.accessToken,
    this.lastLogin,
    this.joined,
  }) : super(
          coverPhotoExists: coverPhotoExists,
          userId: userId,
          userGroupId: userGroupId,
          userName: userName,
          fullName: fullName,
          email: email,
        );

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataModelToJson(this);
}

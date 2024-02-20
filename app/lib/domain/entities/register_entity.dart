import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'register_entity.g.dart';

class RegisterEntity extends Equatable {
  final String? status;
  final ProfileDataEntity? data;
  final String? message;
  final String? error;

  const RegisterEntity({
    this.status,
    this.data,
    this.message,
    this.error,
  });

  @override
  List<Object?> get props => [
        status,
        data,
        message,
        error,
      ];
}

@HiveType(typeId: 2)
class ProfileDataEntity extends Equatable {
  @HiveField(0)
  final bool? coverPhotoExists;
  @HiveField(1)
  final String? userId;
  @HiveField(2)
  final String? userGroupId;
  @HiveField(3)
  final String? userName;
  @HiveField(4)
  final String? fullName;
  @HiveField(5)
  final String? email;
  @HiveField(6)
  final String? gender;
  @HiveField(7)
  final String? birthday;
  @HiveField(8)
  final String? birthdaySearch;
  @HiveField(9)
  final String? countryIso;
  @HiveField(10)
  final String? languageId;
  @HiveField(11)
  final String? timeZone;
  @HiveField(12)
  final String? userImage;
  @HiveField(13)
  final bool? isOnline;
  @HiveField(14)
  final String? title;
  @HiveField(15)
  final bool? isFriend;
  @HiveField(16)
  final bool? isFriendOfFriend;
  @HiveField(17)
  final bool? isFriendRequest;
  @HiveField(18)
  final bool? blockable;
  @HiveField(19)
  final bool? isBlocked;
  @HiveField(20)
  final String? relationId;
  @HiveField(21)
  final String? relationWithId;
  @HiveField(22)
  final String? relationPhrase;
  @HiveField(23)
  final String? coverPhoto;
  @HiveField(24)
  final String? locationString;
  @HiveField(25)
  final int? totalSubscriptions;
  @HiveField(26)
  final int? totalSubscribers;
  @HiveField(27)
  final String? biography;
  @HiveField(28)
  final List<String>? favoriteGenresOfMusic;
  @HiveField(29)
  final List<String>? audioArtistCategory;
  @HiveField(30)
  final int? isSubscribed;
  @HiveField(31)
  final String? lat;
  @HiveField(32)
  final String? lng;
  @HiveField(33)
  final String? currency;
  @HiveField(34)
  final String? accessToken;
  @HiveField(35)
  final String? lastLogin;
  @HiveField(36)
  final String? joined;

  const ProfileDataEntity({
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
  });

  @override
  List<Object?> get props => [
        coverPhotoExists,
        userId,
        userGroupId,
        userName,
        fullName,
        email,
        gender,
        birthday,
        birthdaySearch,
        countryIso,
        languageId,
        timeZone,
        userImage,
        isOnline,
        title,
        isFriend,
        isFriendOfFriend,
        isFriendRequest,
        blockable,
        isBlocked,
        relationId,
        relationWithId,
        relationPhrase,
        coverPhoto,
        locationString,
        totalSubscriptions,
        totalSubscribers,
        biography,
        favoriteGenresOfMusic,
        audioArtistCategory,
        isSubscribed,
        lat,
        lng,
        currency,
        accessToken,
        lastLogin,
        joined,
      ];
}

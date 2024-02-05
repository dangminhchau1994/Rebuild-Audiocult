import 'package:equatable/equatable.dart';

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

class ProfileDataEntity extends Equatable {
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

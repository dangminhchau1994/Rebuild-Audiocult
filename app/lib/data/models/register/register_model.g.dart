// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      data: json['data'] == null
          ? null
          : ProfileDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ProfileDataModel _$ProfileDataModelFromJson(Map<String, dynamic> json) =>
    ProfileDataModel(
      coverPhotoExists: json['cover_photo_exists'] as bool?,
      userId: json['user_id'] as String?,
      userGroupId: json['user_group_id'] as String?,
      userName: json['user_name'] as String?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      birthday: json['birthday'] as String?,
      birthdaySearch: json['birthday_search'] as String?,
      countryIso: json['country_iso'] as String?,
      languageId: json['language_id'] as String?,
      timeZone: json['time_zone'] as String?,
      userImage: json['user_image'] as String?,
      isOnline: json['is_online'] as bool?,
      title: json['title'] as String?,
      isFriend: json['is_friend'] as bool?,
      isFriendOfFriend: json['is_friend_of_friend'] as bool?,
      isFriendRequest: json['is_friend_request'] as bool?,
      blockable: json['blockable'] as bool?,
      isBlocked: json['is_blocked'] as bool?,
      relationId: json['relation_id'] as String?,
      relationWithId: json['relation_with_id'] as String?,
      relationPhrase: json['relation_phrase'] as String?,
      coverPhoto: json['cover_photo'] as String?,
      locationString: json['location_string'] as String?,
      totalSubscriptions: json['total_subscriptions'] as int?,
      totalSubscribers: json['total_subscribers'] as int?,
      biography: json['biography'] as String?,
      favoriteGenresOfMusic:
          (json['favorite_genres_of_music'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      audioArtistCategory: (json['audio_artist_category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isSubscribed: json['is_subscribed'] as int?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      currency: json['currency'] as String?,
      accessToken: json['access_token'] as String?,
      lastLogin: json['last_login'] as String?,
      joined: json['joined'] as String?,
    );

Map<String, dynamic> _$ProfileDataModelToJson(ProfileDataModel instance) =>
    <String, dynamic>{
      'cover_photo_exists': instance.coverPhotoExists,
      'user_id': instance.userId,
      'user_group_id': instance.userGroupId,
      'user_name': instance.userName,
      'full_name': instance.fullName,
      'email': instance.email,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'birthday_search': instance.birthdaySearch,
      'country_iso': instance.countryIso,
      'language_id': instance.languageId,
      'time_zone': instance.timeZone,
      'user_image': instance.userImage,
      'is_online': instance.isOnline,
      'title': instance.title,
      'is_friend': instance.isFriend,
      'is_friend_of_friend': instance.isFriendOfFriend,
      'is_friend_request': instance.isFriendRequest,
      'blockable': instance.blockable,
      'is_blocked': instance.isBlocked,
      'relation_id': instance.relationId,
      'relation_with_id': instance.relationWithId,
      'relation_phrase': instance.relationPhrase,
      'cover_photo': instance.coverPhoto,
      'location_string': instance.locationString,
      'total_subscriptions': instance.totalSubscriptions,
      'total_subscribers': instance.totalSubscribers,
      'biography': instance.biography,
      'favorite_genres_of_music': instance.favoriteGenresOfMusic,
      'audio_artist_category': instance.audioArtistCategory,
      'is_subscribed': instance.isSubscribed,
      'lat': instance.lat,
      'lng': instance.lng,
      'currency': instance.currency,
      'access_token': instance.accessToken,
      'last_login': instance.lastLogin,
      'joined': instance.joined,
    };

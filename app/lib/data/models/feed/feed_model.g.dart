// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedModel _$FeedModelFromJson(Map<String, dynamic> json) => FeedModel(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FeedModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      error: json['error'],
    );

Map<String, dynamic> _$FeedModelToJson(FeedModel instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };

FeedModelData _$FeedModelDataFromJson(Map<String, dynamic> json) =>
    FeedModelData(
      feedId: json['feed_id'] as String?,
      appId: json['app_id'] as String?,
      privacy: json['privacy'] as String?,
      privacyComment: json['privacy_comment'] as String?,
      typeId: json['type_id'] as String?,
      userId: json['user_id'] as String?,
      parentUserId: json['parent_user_id'] as String?,
      itemId: json['item_id'] as String?,
      timeStamp: json['time_stamp'] as String?,
      feedReference: json['feed_reference'] as String?,
      parentFeedId: json['parent_feed_id'] as String?,
      parentModuleId: json['parent_module_id'],
      timeUpdate: json['time_update'] as String?,
      content: json['content'],
      totalView: json['total_view'] as String?,
      userName: json['user_name'] as String?,
      fullName: json['full_name'] as String?,
      gender: json['gender'] as String?,
      userImage: json['user_image'] as String?,
      userGroupId: json['user_group_id'] as String?,
      languageId: json['language_id'] as String?,
      feedTimeStamp: json['feed_time_stamp'] as String?,
      canPostComment: json['can_post_comment'] as bool?,
      feedStatus: json['feed_status'] as String?,
      feedTitle: json['feed_title'] as String?,
      feedLink: json['feed_link'] as String?,
      totalComment: json['total_comment'] as String?,
      feedTotalLike: json['feed_total_like'] as String?,
      feedIsLiked: json['feed_is_liked'] as bool?,
      feedIcon: json['feed_icon'] as String?,
      enableLike: json['enable_like'] as bool?,
      commentTypeId: json['comment_type_id'] as String?,
      likeTypeId: json['like_type_id'] as String?,
      totalFriendsTagged: json['total_friends_tagged'] as String?,
      canLike: json['can_like'] as bool?,
      canComment: json['can_comment'] as bool?,
      canShare: json['can_share'] as bool?,
      totalAction: json['total_action'] as int?,
      statusBackground: json['status_background'] as String?,
      parentFeed: json['parent_feed'],
      lastIcon: json['last_icon'] == null
          ? null
          : IconModel.fromJson(json['last_icon'] as Map<String, dynamic>),
      icons: (json['icons'] as List<dynamic>?)
          ?.map((e) => IconModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalImage: json['total_image'] as int?,
      feedImageUrl: (json['feed_image_url'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      customDataCache: json['custom_data_cache'] == null
          ? null
          : CustomDataCacheModel.fromJson(
              json['custom_data_cache'] as Map<String, dynamic>),
      feedInfo: json['feed_info'] as String?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeedModelDataToJson(FeedModelData instance) =>
    <String, dynamic>{
      'feed_id': instance.feedId,
      'app_id': instance.appId,
      'privacy': instance.privacy,
      'privacy_comment': instance.privacyComment,
      'type_id': instance.typeId,
      'user_id': instance.userId,
      'parent_user_id': instance.parentUserId,
      'item_id': instance.itemId,
      'time_stamp': instance.timeStamp,
      'feed_reference': instance.feedReference,
      'parent_feed_id': instance.parentFeedId,
      'parent_module_id': instance.parentModuleId,
      'time_update': instance.timeUpdate,
      'content': instance.content,
      'total_view': instance.totalView,
      'user_name': instance.userName,
      'full_name': instance.fullName,
      'gender': instance.gender,
      'user_image': instance.userImage,
      'user_group_id': instance.userGroupId,
      'language_id': instance.languageId,
      'feed_time_stamp': instance.feedTimeStamp,
      'can_post_comment': instance.canPostComment,
      'feed_status': instance.feedStatus,
      'feed_title': instance.feedTitle,
      'feed_link': instance.feedLink,
      'total_comment': instance.totalComment,
      'feed_total_like': instance.feedTotalLike,
      'feed_is_liked': instance.feedIsLiked,
      'feed_icon': instance.feedIcon,
      'enable_like': instance.enableLike,
      'comment_type_id': instance.commentTypeId,
      'like_type_id': instance.likeTypeId,
      'total_friends_tagged': instance.totalFriendsTagged,
      'can_like': instance.canLike,
      'can_comment': instance.canComment,
      'can_share': instance.canShare,
      'total_action': instance.totalAction,
      'status_background': instance.statusBackground,
      'parent_feed': instance.parentFeed,
      'last_icon': instance.lastIcon,
      'icons': instance.icons,
      'total_image': instance.totalImage,
      'feed_image_url': instance.feedImageUrl,
      'custom_data_cache': instance.customDataCache,
      'feed_info': instance.feedInfo,
      'comments': instance.comments,
    };

CustomDataCacheModel _$CustomDataCacheModelFromJson(
        Map<String, dynamic> json) =>
    CustomDataCacheModel(
      parentUserId: json['parent_user_id'] as String?,
      parentProfilePageId: json['parent_profile_page_id'],
      userParentServerId: json['user_parent_server_id'],
      parentUserName: json['parent_user_name'],
      parentFullName: json['parent_full_name'],
      parentGender: json['parent_gender'],
      parentUserImage: json['parent_user_image'],
      parentIsInvisible: json['parent_is_invisible'],
      parentUserGroupId: json['parent_user_group_id'],
      parentLanguageId: json['parent_language_id'],
      parentLastActivity: json['parent_last_activity'],
      parentBirthday: json['parent_birthday'],
      parentCountryIso: json['parent_country_iso'],
      photoId: json['photo_id'] as String?,
      albumId: json['album_id'] as String?,
      viewId: json['view_id'] as String?,
      moduleId: json['module_id'] as String?,
      groupId: json['group_id'] as String?,
      typeId: json['type_id'] as String?,
      privacy: json['privacy'] as String?,
      privacyComment: json['privacy_comment'] as String?,
      title: json['title'] as String?,
      userId: json['user_id'] as String?,
      destination: json['destination'] as String?,
      serverId: json['server_id'] as String?,
      mature: json['mature'] as String?,
      allowComment: json['allow_comment'] as String?,
      allowRate: json['allow_rate'] as String?,
      timeStamp: json['time_stamp'] as String?,
      totalView: json['total_view'] as String?,
      totalComment: json['total_comment'] as String?,
      totalDownload: json['total_download'] as String?,
      totalRating: json['total_rating'] as String?,
      totalVote: json['total_vote'] as String?,
      totalBattle: json['total_battle'] as String?,
      totalLike: json['total_like'] as String?,
      totalDislike: json['total_dislike'] as String?,
      isFeatured: json['is_featured'] as String?,
      isCover: json['is_cover'] as String?,
      allowDownload: json['allow_download'] as String?,
      isSponsor: json['is_sponsor'] as String?,
      ordering: json['ordering'] as String?,
      isProfilePhoto: json['is_profile_photo'] as String?,
      isDay: json['is_day'] as String?,
      tags: json['tags'],
      isCoverPhoto: json['is_cover_photo'] as String?,
      isTemp: json['is_temp'] as String?,
      description: json['description'] as String?,
      locationLatlng: json['location_latlng'],
      locationName: json['location_name'],
      extraPhotoId: json['extra_photo_id'],
      name: json['name'] as String?,
      timelineId: json['timeline_id'] as String?,
      isLiked: json['is_liked'],
      videoId: json['video_id'] as String?,
      statusInfo: json['status_info'] as String?,
      videoTotalView: json['video_total_view'] as String?,
      itemId: json['item_id'] as String?,
      imagePath: json['image_path'] as String?,
      imageServerId: json['image_server_id'] as String?,
      isStream: json['is_stream'] as String?,
      text: json['text'] as String?,
      videoUrl: json['video_url'] as String?,
      embedCode: json['embed_code'] as String?,
      duration: json['duration'] as String?,
      isInFeed: json['is_in_feed'] as bool?,
      fallbackImagePath: json['fallback_image_path'] as String?,
    );

Map<String, dynamic> _$CustomDataCacheModelToJson(
        CustomDataCacheModel instance) =>
    <String, dynamic>{
      'parent_user_id': instance.parentUserId,
      'parent_profile_page_id': instance.parentProfilePageId,
      'user_parent_server_id': instance.userParentServerId,
      'parent_user_name': instance.parentUserName,
      'parent_full_name': instance.parentFullName,
      'parent_gender': instance.parentGender,
      'parent_user_image': instance.parentUserImage,
      'parent_is_invisible': instance.parentIsInvisible,
      'parent_user_group_id': instance.parentUserGroupId,
      'parent_language_id': instance.parentLanguageId,
      'parent_last_activity': instance.parentLastActivity,
      'parent_birthday': instance.parentBirthday,
      'parent_country_iso': instance.parentCountryIso,
      'photo_id': instance.photoId,
      'album_id': instance.albumId,
      'view_id': instance.viewId,
      'module_id': instance.moduleId,
      'group_id': instance.groupId,
      'type_id': instance.typeId,
      'privacy': instance.privacy,
      'privacy_comment': instance.privacyComment,
      'title': instance.title,
      'user_id': instance.userId,
      'destination': instance.destination,
      'server_id': instance.serverId,
      'mature': instance.mature,
      'allow_comment': instance.allowComment,
      'allow_rate': instance.allowRate,
      'time_stamp': instance.timeStamp,
      'total_view': instance.totalView,
      'total_comment': instance.totalComment,
      'total_download': instance.totalDownload,
      'total_rating': instance.totalRating,
      'total_vote': instance.totalVote,
      'total_battle': instance.totalBattle,
      'total_like': instance.totalLike,
      'total_dislike': instance.totalDislike,
      'is_featured': instance.isFeatured,
      'is_cover': instance.isCover,
      'allow_download': instance.allowDownload,
      'is_sponsor': instance.isSponsor,
      'ordering': instance.ordering,
      'is_profile_photo': instance.isProfilePhoto,
      'is_day': instance.isDay,
      'tags': instance.tags,
      'is_cover_photo': instance.isCoverPhoto,
      'is_temp': instance.isTemp,
      'description': instance.description,
      'location_latlng': instance.locationLatlng,
      'location_name': instance.locationName,
      'extra_photo_id': instance.extraPhotoId,
      'name': instance.name,
      'timeline_id': instance.timelineId,
      'is_liked': instance.isLiked,
      'video_id': instance.videoId,
      'status_info': instance.statusInfo,
      'video_total_view': instance.videoTotalView,
      'item_id': instance.itemId,
      'image_path': instance.imagePath,
      'image_server_id': instance.imageServerId,
      'is_stream': instance.isStream,
      'text': instance.text,
      'video_url': instance.videoUrl,
      'embed_code': instance.embedCode,
      'duration': instance.duration,
      'is_in_feed': instance.isInFeed,
      'fallback_image_path': instance.fallbackImagePath,
    };

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      isLiked: json['is_liked'],
      commentId: json['comment_id'] as String?,
      parentId: json['parent_id'] as String?,
      typeId: json['type_id'] as String?,
      itemId: json['item_id'] as String?,
      userId: json['user_id'] as String?,
      ownerUserId: json['owner_user_id'] as String?,
      timeStamp: json['time_stamp'] as String?,
      updateTime: json['update_time'] as String?,
      updateUser: json['update_user'] as String?,
      rating: json['rating'],
      ipAddress: json['ip_address'] as String?,
      author: json['author'] as String?,
      authorEmail: json['author_email'],
      authorUrl: json['author_url'],
      viewId: json['view_id'] as String?,
      childTotal: json['child_total'] as String?,
      totalLike: json['total_like'] as String?,
      totalDislike: json['total_dislike'] as String?,
      feedTable: json['feed_table'] as String?,
      text: json['text'] as String?,
      profilePageId: json['profile_page_id'] as String?,
      userServerId: json['user_server_id'] as String?,
      userName: json['user_name'] as String?,
      fullName: json['full_name'] as String?,
      gender: json['gender'] as String?,
      userImage: json['user_image'] as String?,
      isInvisible: json['is_invisible'] as String?,
      userGroupId: json['user_group_id'] as String?,
      languageId: json['language_id'] as String?,
      lastActivity: json['last_activity'] as String?,
      birthday: json['birthday'] as String?,
      countryIso: json['country_iso'] as String?,
      extraData: json['extra_data'] as List<dynamic>?,
      isHidden: json['is_hidden'] as bool?,
      totalHidden: json['total_hidden'] as int?,
      hideIds: json['hide_ids'] as String?,
      hideThis: json['hide_this'] as bool?,
      postConvertTime: json['post_convert_time'] as String?,
      children: json['children'],
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'is_liked': instance.isLiked,
      'comment_id': instance.commentId,
      'parent_id': instance.parentId,
      'type_id': instance.typeId,
      'item_id': instance.itemId,
      'user_id': instance.userId,
      'owner_user_id': instance.ownerUserId,
      'time_stamp': instance.timeStamp,
      'update_time': instance.updateTime,
      'update_user': instance.updateUser,
      'rating': instance.rating,
      'ip_address': instance.ipAddress,
      'author': instance.author,
      'author_email': instance.authorEmail,
      'author_url': instance.authorUrl,
      'view_id': instance.viewId,
      'child_total': instance.childTotal,
      'total_like': instance.totalLike,
      'total_dislike': instance.totalDislike,
      'feed_table': instance.feedTable,
      'text': instance.text,
      'profile_page_id': instance.profilePageId,
      'user_server_id': instance.userServerId,
      'user_name': instance.userName,
      'full_name': instance.fullName,
      'gender': instance.gender,
      'user_image': instance.userImage,
      'is_invisible': instance.isInvisible,
      'user_group_id': instance.userGroupId,
      'language_id': instance.languageId,
      'last_activity': instance.lastActivity,
      'birthday': instance.birthday,
      'country_iso': instance.countryIso,
      'extra_data': instance.extraData,
      'is_hidden': instance.isHidden,
      'total_hidden': instance.totalHidden,
      'hide_ids': instance.hideIds,
      'hide_this': instance.hideThis,
      'post_convert_time': instance.postConvertTime,
      'children': instance.children,
    };

ChildrenModel _$ChildrenModelFromJson(Map<String, dynamic> json) =>
    ChildrenModel(
      total: json['total'] as int?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => ChildrenCommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChildrenModelToJson(ChildrenModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'comments': instance.comments,
    };

ChildrenCommentModel _$ChildrenCommentModelFromJson(
        Map<String, dynamic> json) =>
    ChildrenCommentModel(
      isLiked: json['is_liked'],
      commentId: json['comment_id'] as String?,
      parentId: json['parent_id'] as String?,
      typeId: json['type_id'] as String?,
      itemId: json['item_id'] as String?,
      userId: json['user_id'] as String?,
      ownerUserId: json['owner_user_id'] as String?,
      timeStamp: json['time_stamp'] as String?,
      updateTime: json['update_time'] as String?,
      updateUser: json['update_user'],
      rating: json['rating'],
      ipAddress: json['ip_address'] as String?,
      author: json['author'] as String?,
      authorEmail: json['author_email'],
      authorUrl: json['author_url'],
      viewId: json['view_id'] as String?,
      childTotal: json['child_total'] as String?,
      totalLike: json['total_like'] as String?,
      totalDislike: json['total_dislike'] as String?,
      feedTable: json['feed_table'] as String?,
      text: json['text'] as String?,
      profilePageId: json['profile_page_id'] as String?,
      userServerId: json['user_server_id'] as String?,
      userName: json['user_name'] as String?,
      fullName: json['full_name'] as String?,
      gender: json['gender'] as String?,
      userImage: json['user_image'] as String?,
      isInvisible: json['is_invisible'] as String?,
      userGroupId: json['user_group_id'] as String?,
      languageId: json['language_id'] as String?,
      lastActivity: json['last_activity'] as String?,
      birthday: json['birthday'] as String?,
      countryIso: json['country_iso'] as String?,
      iteration: json['iteration'] as int?,
      extraData: json['extra_data'] as List<dynamic>?,
      isHidden: json['is_hidden'] as bool?,
      totalHidden: json['total_hidden'] as int?,
      hideIds: json['hide_ids'] as String?,
      hideThis: json['hide_this'] as bool?,
      postConvertTime: json['post_convert_time'] as String?,
      children: json['children'] == null
          ? null
          : CommentChildrenClassModel.fromJson(
              json['children'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChildrenCommentModelToJson(
        ChildrenCommentModel instance) =>
    <String, dynamic>{
      'is_liked': instance.isLiked,
      'comment_id': instance.commentId,
      'parent_id': instance.parentId,
      'type_id': instance.typeId,
      'item_id': instance.itemId,
      'user_id': instance.userId,
      'owner_user_id': instance.ownerUserId,
      'time_stamp': instance.timeStamp,
      'update_time': instance.updateTime,
      'update_user': instance.updateUser,
      'rating': instance.rating,
      'ip_address': instance.ipAddress,
      'author': instance.author,
      'author_email': instance.authorEmail,
      'author_url': instance.authorUrl,
      'view_id': instance.viewId,
      'child_total': instance.childTotal,
      'total_like': instance.totalLike,
      'total_dislike': instance.totalDislike,
      'feed_table': instance.feedTable,
      'text': instance.text,
      'profile_page_id': instance.profilePageId,
      'user_server_id': instance.userServerId,
      'user_name': instance.userName,
      'full_name': instance.fullName,
      'gender': instance.gender,
      'user_image': instance.userImage,
      'is_invisible': instance.isInvisible,
      'user_group_id': instance.userGroupId,
      'language_id': instance.languageId,
      'last_activity': instance.lastActivity,
      'birthday': instance.birthday,
      'country_iso': instance.countryIso,
      'iteration': instance.iteration,
      'extra_data': instance.extraData,
      'is_hidden': instance.isHidden,
      'total_hidden': instance.totalHidden,
      'hide_ids': instance.hideIds,
      'hide_this': instance.hideThis,
      'post_convert_time': instance.postConvertTime,
      'children': instance.children,
    };

CommentChildrenClassModel _$CommentChildrenClassModelFromJson(
        Map<String, dynamic> json) =>
    CommentChildrenClassModel(
      total: json['total'] as int?,
      comments: json['comments'] as List<dynamic>?,
    );

Map<String, dynamic> _$CommentChildrenClassModelToJson(
        CommentChildrenClassModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'comments': instance.comments,
    };

IconModel _$IconModelFromJson(Map<String, dynamic> json) => IconModel(
      likeTypeId: json['like_type_id'] as String?,
      imagePath: json['image_path'] as String?,
      countIcon: json['count_icon'] as String?,
    );

Map<String, dynamic> _$IconModelToJson(IconModel instance) => <String, dynamic>{
      'like_type_id': instance.likeTypeId,
      'image_path': instance.imagePath,
      'count_icon': instance.countIcon,
    };

LikesClassModel _$LikesClassModelFromJson(Map<String, dynamic> json) =>
    LikesClassModel(
      likeId: json['like_id'] as String?,
      typeId: json['type_id'] as String?,
      itemId: json['item_id'] as String?,
      userId: json['user_id'] as String?,
      feedTable: json['feed_table'] as String?,
      timeStamp: json['time_stamp'] as String?,
      reactId: json['react_id'] as String?,
      likeTypeId: json['like_type_id'] as String?,
      profilePageId: json['profile_page_id'] as String?,
      userServerId: json['user_server_id'] as String?,
      userName: json['user_name'] as String?,
      fullName: json['full_name'] as String?,
      gender: json['gender'] as String?,
      userImage: json['user_image'] as String?,
      isInvisible: json['is_invisible'] as String?,
      userGroupId: json['user_group_id'] as String?,
      languageId: json['language_id'] as String?,
      lastActivity: json['last_activity'] as String?,
      birthday: json['birthday'] as String?,
      countryIso: json['country_iso'] as String?,
      actionTimeStamp: json['action_time_stamp'],
      isFriend: json['is_friend'],
    );

Map<String, dynamic> _$LikesClassModelToJson(LikesClassModel instance) =>
    <String, dynamic>{
      'like_id': instance.likeId,
      'type_id': instance.typeId,
      'item_id': instance.itemId,
      'user_id': instance.userId,
      'feed_table': instance.feedTable,
      'time_stamp': instance.timeStamp,
      'react_id': instance.reactId,
      'like_type_id': instance.likeTypeId,
      'profile_page_id': instance.profilePageId,
      'user_server_id': instance.userServerId,
      'user_name': instance.userName,
      'full_name': instance.fullName,
      'gender': instance.gender,
      'user_image': instance.userImage,
      'is_invisible': instance.isInvisible,
      'user_group_id': instance.userGroupId,
      'language_id': instance.languageId,
      'last_activity': instance.lastActivity,
      'birthday': instance.birthday,
      'country_iso': instance.countryIso,
      'action_time_stamp': instance.actionTimeStamp,
      'is_friend': instance.isFriend,
    };
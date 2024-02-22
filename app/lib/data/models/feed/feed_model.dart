import 'package:app/domain/entities/feed/feed_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'feed_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedModel extends FeedEntity {
  FeedModel({
    this.status,
    this.data,
    this.message,
    this.error,
  }) : super(
          status: status,
          data: data,
          message: message,
          error: error,
        );

  final String? status;
  final String? message;
  final List<FeedModelData>? data;
  final dynamic error;

  factory FeedModel.fromJson(Map<String, dynamic> json) =>
      _$FeedModelFromJson(json);
  Map<String?, dynamic> toJson() => _$FeedModelToJson(this);

  FeedEntity toEntity() => FeedEntity(
        status: status,
        data: data?.map((e) => e.toEntity()).toList(),
        message: message,
        error: error,
      );
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedModelData extends FeedDataEntity {
  final String? feedId;
  final String? appId;
  final String? privacy;
  final String? privacyComment;
  final String? typeId;
  final String? userId;
  final String? parentUserId;
  final String? itemId;
  final String? timeStamp;
  final String? feedReference;
  final String? parentFeedId;
  final dynamic parentModuleId;
  final String? timeUpdate;
  final dynamic content;
  final String? totalView;
  final String? userName;
  final String? fullName;
  final String? gender;
  final String? userImage;
  final String? userGroupId;
  final String? languageId;
  final String? feedTimeStamp;
  final bool? canPostComment;
  final String? feedStatus;
  final String? feedTitle;
  final String? feedLink;
  final String? totalComment;
  final String? feedTotalLike;
  final bool? feedIsLiked;
  final String? feedIcon;
  final bool? enableLike;
  final String? commentTypeId;
  final String? likeTypeId;
  final String? totalFriendsTagged;
  final bool? canLike;
  final bool? canComment;
  final bool? canShare;
  final int? totalAction;
  final String? statusBackground;
  final dynamic parentFeed;
  final IconModel? lastIcon;
  final List<IconModel>? icons;
  final int? totalImage;
  final List<String>? feedImageUrl;
  final CustomDataCacheModel? customDataCache;
  final String? feedInfo;
  final List<CommentModel>? comments;

  FeedModelData({
    this.feedId,
    this.appId,
    this.privacy,
    this.privacyComment,
    this.typeId,
    this.userId,
    this.parentUserId,
    this.itemId,
    this.timeStamp,
    this.feedReference,
    this.parentFeedId,
    this.parentModuleId,
    this.timeUpdate,
    this.content,
    this.totalView,
    this.userName,
    this.fullName,
    this.gender,
    this.userImage,
    this.userGroupId,
    this.languageId,
    this.feedTimeStamp,
    this.canPostComment,
    this.feedStatus,
    this.feedTitle,
    this.feedLink,
    this.totalComment,
    this.feedTotalLike,
    this.feedIsLiked,
    this.feedIcon,
    this.enableLike,
    this.commentTypeId,
    this.likeTypeId,
    this.totalFriendsTagged,
    this.canLike,
    this.canComment,
    this.canShare,
    this.totalAction,
    this.statusBackground,
    this.parentFeed,
    this.lastIcon,
    this.icons,
    this.totalImage,
    this.feedImageUrl,
    this.customDataCache,
    this.feedInfo,
    this.comments,
  });

  factory FeedModelData.fromJson(Map<String, dynamic> json) =>
      _$FeedModelDataFromJson(json);

  Map<String?, dynamic> toJson() => _$FeedModelDataToJson(this);

  FeedDataEntity toEntity() => FeedDataEntity(
        feedId: feedId,
        appId: appId,
        privacy: privacy,
        privacyComment: privacyComment,
        typeId: typeId,
        userId: userId,
        parentUserId: parentUserId,
        itemId: itemId,
        timeStamp: timeStamp,
        feedReference: feedReference,
        parentFeedId: parentFeedId,
        parentModuleId: parentModuleId,
        timeUpdate: timeUpdate,
        content: content,
        totalView: totalView,
        userName: userName,
      );
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomDataCacheModel extends CustomDataCacheEntity {
  final String? parentUserId;
  final dynamic parentProfilePageId;
  final dynamic userParentServerId;
  final dynamic parentUserName;
  final dynamic parentFullName;
  final dynamic parentGender;
  final dynamic parentUserImage;
  final dynamic parentIsInvisible;
  final dynamic parentUserGroupId;
  final dynamic parentLanguageId;
  final dynamic parentLastActivity;
  final dynamic parentBirthday;
  final dynamic parentCountryIso;
  final String? photoId;
  final String? albumId;
  final String? viewId;
  final String? moduleId;
  final String? groupId;
  final String? typeId;
  final String? privacy;
  final String? privacyComment;
  final String? title;
  final String? userId;
  final String? destination;
  final String? serverId;
  final String? mature;
  final String? allowComment;
  final String? allowRate;
  final String? timeStamp;
  final String? totalView;
  final String? totalComment;
  final String? totalDownload;
  final String? totalRating;
  final String? totalVote;
  final String? totalBattle;
  final String? totalLike;
  final String? totalDislike;
  final String? isFeatured;
  final String? isCover;
  final String? allowDownload;
  final String? isSponsor;
  final String? ordering;
  final String? isProfilePhoto;
  final String? isDay;
  final dynamic tags;
  final String? isCoverPhoto;
  final String? isTemp;
  final String? description;
  final dynamic locationLatlng;
  final dynamic locationName;
  final dynamic extraPhotoId;
  final String? name;
  final String? timelineId;
  final dynamic isLiked;
  final String? videoId;
  final String? statusInfo;
  final String? videoTotalView;
  final String? itemId;
  final String? imagePath;
  final String? imageServerId;
  final String? isStream;
  final String? text;
  final String? videoUrl;
  final String? embedCode;
  final String? duration;
  final bool? isInFeed;
  final String? fallbackImagePath;

  CustomDataCacheModel({
    this.parentUserId,
    this.parentProfilePageId,
    this.userParentServerId,
    this.parentUserName,
    this.parentFullName,
    this.parentGender,
    this.parentUserImage,
    this.parentIsInvisible,
    this.parentUserGroupId,
    this.parentLanguageId,
    this.parentLastActivity,
    this.parentBirthday,
    this.parentCountryIso,
    this.photoId,
    this.albumId,
    this.viewId,
    this.moduleId,
    this.groupId,
    this.typeId,
    this.privacy,
    this.privacyComment,
    this.title,
    this.userId,
    this.destination,
    this.serverId,
    this.mature,
    this.allowComment,
    this.allowRate,
    this.timeStamp,
    this.totalView,
    this.totalComment,
    this.totalDownload,
    this.totalRating,
    this.totalVote,
    this.totalBattle,
    this.totalLike,
    this.totalDislike,
    this.isFeatured,
    this.isCover,
    this.allowDownload,
    this.isSponsor,
    this.ordering,
    this.isProfilePhoto,
    this.isDay,
    this.tags,
    this.isCoverPhoto,
    this.isTemp,
    this.description,
    this.locationLatlng,
    this.locationName,
    this.extraPhotoId,
    this.name,
    this.timelineId,
    this.isLiked,
    this.videoId,
    this.statusInfo,
    this.videoTotalView,
    this.itemId,
    this.imagePath,
    this.imageServerId,
    this.isStream,
    this.text,
    this.videoUrl,
    this.embedCode,
    this.duration,
    this.isInFeed,
    this.fallbackImagePath,
  });

  factory CustomDataCacheModel.fromJson(Map<String, dynamic> json) =>
      _$CustomDataCacheModelFromJson(json);

  Map<String?, dynamic> toJson() => _$CustomDataCacheModelToJson(this);

  CustomDataCacheEntity toEntity() => CustomDataCacheEntity(
        parentUserId: parentUserId,
        parentProfilePageId: parentProfilePageId,
        userParentServerId: userParentServerId,
        parentUserName: parentUserName,
        parentFullName: parentFullName,
        parentGender: parentGender,
      );
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CommentModel extends CommentEntity {
  final dynamic isLiked;
  final String? commentId;
  final String? parentId;
  final String? typeId;
  final String? itemId;
  final String? userId;
  final String? ownerUserId;
  final String? timeStamp;
  final String? updateTime;
  final String? updateUser;
  final dynamic rating;
  final String? ipAddress;
  final String? author;
  final dynamic authorEmail;
  final dynamic authorUrl;
  final String? viewId;
  final String? childTotal;
  final String? totalLike;
  final String? totalDislike;
  final String? feedTable;
  final String? text;
  final String? profilePageId;
  final String? userServerId;
  final String? userName;
  final String? fullName;
  final String? gender;
  final String? userImage;
  final String? isInvisible;
  final String? userGroupId;
  final String? languageId;
  final String? lastActivity;
  final String? birthday;
  final String? countryIso;
  final List<dynamic>? extraData;
  final bool? isHidden;
  final int? totalHidden;
  final String? hideIds;
  final bool? hideThis;
  final String? postConvertTime;
  final dynamic children;

  CommentModel({
    this.isLiked,
    this.commentId,
    this.parentId,
    this.typeId,
    this.itemId,
    this.userId,
    this.ownerUserId,
    this.timeStamp,
    this.updateTime,
    this.updateUser,
    this.rating,
    this.ipAddress,
    this.author,
    this.authorEmail,
    this.authorUrl,
    this.viewId,
    this.childTotal,
    this.totalLike,
    this.totalDislike,
    this.feedTable,
    this.text,
    this.profilePageId,
    this.userServerId,
    this.userName,
    this.fullName,
    this.gender,
    this.userImage,
    this.isInvisible,
    this.userGroupId,
    this.languageId,
    this.lastActivity,
    this.birthday,
    this.countryIso,
    this.extraData,
    this.isHidden,
    this.totalHidden,
    this.hideIds,
    this.hideThis,
    this.postConvertTime,
    this.children,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String?, dynamic> toJson() => _$CommentModelToJson(this);

  CommentEntity toEntity() => CommentEntity(
        isLiked: isLiked,
        commentId: commentId,
        parentId: parentId,
        typeId: typeId,
        itemId: itemId,
        userId: userId,
        ownerUserId: ownerUserId,
        timeStamp: timeStamp,
        updateTime: updateTime,
        updateUser: updateUser,
        rating: rating,
        ipAddress: ipAddress,
      );
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ChildrenModel extends ChildrenChildrenEntity {
  final int? total;
  final List<ChildrenCommentModel>? comments;

  ChildrenModel({
    this.total,
    this.comments,
  });

  factory ChildrenModel.fromJson(Map<String, dynamic> json) =>
      _$ChildrenModelFromJson(json);

  Map<String?, dynamic> toJson() => _$ChildrenModelToJson(this);

  ChildrenChildrenEntity toEntity() => ChildrenChildrenEntity(
        total: total,
        comments: comments,
      );
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ChildrenCommentModel extends ChildrenCommentEntity {
  final dynamic isLiked;
  final String? commentId;
  final String? parentId;
  final String? typeId;
  final String? itemId;
  final String? userId;
  final String? ownerUserId;
  final String? timeStamp;
  final String? updateTime;
  final dynamic updateUser;
  final dynamic rating;
  final String? ipAddress;
  final String? author;
  final dynamic authorEmail;
  final dynamic authorUrl;
  final String? viewId;
  final String? childTotal;
  final String? totalLike;
  final String? totalDislike;
  final String? feedTable;
  final String? text;
  final String? profilePageId;
  final String? userServerId;
  final String? userName;
  final String? fullName;
  final String? gender;
  final String? userImage;
  final String? isInvisible;
  final String? userGroupId;
  final String? languageId;
  final String? lastActivity;
  final String? birthday;
  final String? countryIso;
  final int? iteration;
  final List<dynamic>? extraData;
  final bool? isHidden;
  final int? totalHidden;
  final String? hideIds;
  final bool? hideThis;
  final String? postConvertTime;
  final CommentChildrenClassModel? children;

  ChildrenCommentModel({
    this.isLiked,
    this.commentId,
    this.parentId,
    this.typeId,
    this.itemId,
    this.userId,
    this.ownerUserId,
    this.timeStamp,
    this.updateTime,
    this.updateUser,
    this.rating,
    this.ipAddress,
    this.author,
    this.authorEmail,
    this.authorUrl,
    this.viewId,
    this.childTotal,
    this.totalLike,
    this.totalDislike,
    this.feedTable,
    this.text,
    this.profilePageId,
    this.userServerId,
    this.userName,
    this.fullName,
    this.gender,
    this.userImage,
    this.isInvisible,
    this.userGroupId,
    this.languageId,
    this.lastActivity,
    this.birthday,
    this.countryIso,
    this.iteration,
    this.extraData,
    this.isHidden,
    this.totalHidden,
    this.hideIds,
    this.hideThis,
    this.postConvertTime,
    this.children,
  });

  factory ChildrenCommentModel.fromJson(Map<String, dynamic> json) =>
      _$ChildrenCommentModelFromJson(json);

  Map<String?, dynamic> toJson() => _$ChildrenCommentModelToJson(this);

  ChildrenCommentEntity toEntity() => ChildrenCommentEntity(
        isLiked: isLiked,
        commentId: commentId,
        parentId: parentId,
        typeId: typeId,
        itemId: itemId,
        userId: userId,
        ownerUserId: ownerUserId,
        timeStamp: timeStamp,
        updateTime: updateTime,
        rating: rating,
        ipAddress: ipAddress,
      );
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CommentChildrenClassModel extends CommentChildrenClassEntity {
  final int? total;
  final List<dynamic>? comments;

  CommentChildrenClassModel({
    this.total,
    this.comments,
  });

  factory CommentChildrenClassModel.fromJson(Map<String, dynamic> json) =>
      _$CommentChildrenClassModelFromJson(json);

  Map<String?, dynamic> toJson() => _$CommentChildrenClassModelToJson(this);

  CommentChildrenClassEntity toEntity() => CommentChildrenClassEntity(
        total: total,
        comments: comments,
      );
}

@JsonSerializable(fieldRename: FieldRename.snake)
class IconModel extends IconEntity {
  final String? likeTypeId;
  final String? imagePath;
  final String? countIcon;

  IconModel({
    this.likeTypeId,
    this.imagePath,
    this.countIcon,
  });

  factory IconModel.fromJson(Map<String, dynamic> json) =>
      _$IconModelFromJson(json);

  Map<String?, dynamic> toJson() => _$IconModelToJson(this);

  IconEntity toEntity() => IconEntity(
        likeTypeId: likeTypeId,
        imagePath: imagePath,
        countIcon: countIcon,
      );
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LikesClassModel extends LikesClassEntity {
  final String? likeId;
  final String? typeId;
  final String? itemId;
  final String? userId;
  final String? feedTable;
  final String? timeStamp;
  final String? reactId;
  final String? likeTypeId;
  final String? profilePageId;
  final String? userServerId;
  final String? userName;
  final String? fullName;
  final String? gender;
  final String? userImage;
  final String? isInvisible;
  final String? userGroupId;
  final String? languageId;
  final String? lastActivity;
  final String? birthday;
  final String? countryIso;
  final dynamic actionTimeStamp;
  final dynamic isFriend;

  LikesClassModel({
    this.likeId,
    this.typeId,
    this.itemId,
    this.userId,
    this.feedTable,
    this.timeStamp,
    this.reactId,
    this.likeTypeId,
    this.profilePageId,
    this.userServerId,
    this.userName,
    this.fullName,
    this.gender,
    this.userImage,
    this.isInvisible,
    this.userGroupId,
    this.languageId,
    this.lastActivity,
    this.birthday,
    this.countryIso,
    this.actionTimeStamp,
    this.isFriend,
  });

  factory LikesClassModel.fromJson(Map<String, dynamic> json) =>
      _$LikesClassModelFromJson(json);

  Map<String?, dynamic> toJson() => _$LikesClassModelToJson(this);

  LikesClassEntity toEntity() => LikesClassEntity(
        likeId: likeId,
        typeId: typeId,
        itemId: itemId,
        userId: userId,
        feedTable: feedTable,
        timeStamp: timeStamp,
        reactId: reactId,
        likeTypeId: likeTypeId,
        profilePageId: profilePageId,
        userServerId: userServerId,
        userName: userName,
      );
}

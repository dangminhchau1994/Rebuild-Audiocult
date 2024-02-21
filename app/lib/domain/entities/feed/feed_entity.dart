import 'package:hive/hive.dart';
part 'feed_entity.g.dart';

@HiveType(typeId: 3)
class FeedEntity {
  @HiveField(1)
  final String? status;
  @HiveField(2)
  final List<FeedDataEntity>? data;
  @HiveField(3)
  final String? message;
  @HiveField(4)
  final dynamic error;

  FeedEntity({
    this.status,
    this.data,
    this.message,
    this.error,
  });
}

@HiveType(typeId: 4)
class FeedDataEntity {
  @HiveField(1)
  final String? feedId;
  @HiveField(2)
  final String? appId;
  @HiveField(3)
  final String? privacy;
  @HiveField(4)
  final String? privacyComment;
  @HiveField(5)
  final String? typeId;
  @HiveField(6)
  final String? userId;
  @HiveField(7)
  final String? parentUserId;
  @HiveField(8)
  final String? itemId;
  @HiveField(9)
  final String? timeStamp;
  @HiveField(10)
  final String? feedReference;
  @HiveField(11)
  final String? parentFeedId;
  @HiveField(12)
  final dynamic parentModuleId;
  @HiveField(13)
  final String? timeUpdate;
  @HiveField(14)
  final dynamic content;
  @HiveField(15)
  final String? totalView;
  @HiveField(16)
  final String? userName;
  @HiveField(17)
  final String? fullName;
  @HiveField(18)
  final String? gender;
  @HiveField(19)
  final String? userImage;
  @HiveField(20)
  final String? userGroupId;
  @HiveField(21)
  final String? languageId;
  @HiveField(22)
  final String? feedTimeStamp;
  @HiveField(23)
  final bool? canPostComment;
  @HiveField(24)
  final String? feedStatus;
  @HiveField(25)
  final String? feedTitle;
  @HiveField(26)
  final String? feedLink;
  @HiveField(27)
  final String? totalComment;
  @HiveField(28)
  final String? feedTotalLike;
  @HiveField(29)
  final bool? feedIsLiked;
  @HiveField(30)
  final String? feedIcon;
  @HiveField(31)
  final bool? enableLike;
  @HiveField(32)
  final String? commentTypeId;
  @HiveField(33)
  final String? likeTypeId;
  @HiveField(34)
  final String? totalFriendsTagged;
  @HiveField(35)
  final Map<int, LikesClassEntity>? likes;
  @HiveField(36)
  final bool? canLike;
  @HiveField(37)
  final bool? canComment;
  @HiveField(38)
  final bool? canShare;
  @HiveField(39)
  final int? totalAction;
  @HiveField(40)
  final String? statusBackground;
  @HiveField(41)
  final dynamic parentFeed;
  @HiveField(42)
  final IconEntity? lastIcon;
  @HiveField(43)
  final List<IconEntity>? icons;
  @HiveField(44)
  final int? totalImage;
  @HiveField(45)
  final List<String>? feedImageUrl;
  @HiveField(46)
  final CustomDataCacheEntity? customDataCache;
  @HiveField(47)
  final String? feedInfo;
  @HiveField(48)
  final List<CommentEntity>? comments;

  FeedDataEntity({
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
    this.likes,
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
}

@HiveType(typeId: 5)
class CommentEntity {
  @HiveField(1)
  final dynamic isLiked;
  @HiveField(2)
  final String? commentId;
  @HiveField(3)
  final String? parentId;
  @HiveField(4)
  final String? typeId;
  @HiveField(5)
  final String? itemId;
  @HiveField(6)
  final String? userId;
  @HiveField(7)
  final String? ownerUserId;
  @HiveField(8)
  final String? timeStamp;
  @HiveField(9)
  final String? updateTime;
  @HiveField(10)
  final String? updateUser;
  @HiveField(11)
  final dynamic rating;
  @HiveField(12)
  final String? ipAddress;
  @HiveField(13)
  final String? author;
  @HiveField(14)
  final dynamic authorEmail;
  @HiveField(15)
  final dynamic authorUrl;
  @HiveField(16)
  final String? viewId;
  @HiveField(17)
  final String? childTotal;
  @HiveField(18)
  final String? totalLike;
  @HiveField(19)
  final String? totalDislike;
  @HiveField(20)
  final String? feedTable;
  @HiveField(21)
  final String? text;
  @HiveField(22)
  final String? profilePageId;
  @HiveField(23)
  final String? userServerId;
  @HiveField(24)
  final String? userName;
  @HiveField(25)
  final String? fullName;
  @HiveField(26)
  final String? gender;
  @HiveField(27)
  final String? userImage;
  @HiveField(28)
  final String? isInvisible;
  @HiveField(29)
  final String? userGroupId;
  @HiveField(30)
  final String? languageId;
  @HiveField(31)
  final String? lastActivity;
  @HiveField(32)
  final String? birthday;
  @HiveField(33)
  final String? countryIso;
  @HiveField(34)
  final List<dynamic>? extraData;
  @HiveField(35)
  final bool? isHidden;
  @HiveField(36)
  final int? totalHidden;
  @HiveField(37)
  final String? hideIds;
  @HiveField(38)
  final bool? hideThis;
  @HiveField(39)
  final String? postConvertTime;
  @HiveField(40)
  final dynamic children;

  CommentEntity({
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
}

@HiveType(typeId: 6)
class ChildrenChildrenEntity {
  @HiveField(1)
  final int? total;
  @HiveField(2)
  final List<ChildrenCommentEntity>? comments;

  ChildrenChildrenEntity({
    this.total,
    this.comments,
  });
}

@HiveType(typeId: 7)
class ChildrenCommentEntity {
  @HiveField(1)
  final dynamic isLiked;
  @HiveField(2)
  final String? commentId;
  @HiveField(3)
  final String? parentId;
  @HiveField(4)
  final String? typeId;
  @HiveField(5)
  final String? itemId;
  @HiveField(6)
  final String? userId;
  @HiveField(7)
  final String? ownerUserId;
  @HiveField(8)
  final String? timeStamp;
  @HiveField(9)
  final String? updateTime;
  @HiveField(10)
  final dynamic updateUser;
  @HiveField(11)
  final dynamic rating;
  @HiveField(12)
  final String? ipAddress;
  @HiveField(13)
  final String? author;
  @HiveField(14)
  final dynamic authorEmail;
  @HiveField(15)
  final dynamic authorUrl;
  @HiveField(16)
  final String? viewId;
  @HiveField(17)
  final String? childTotal;
  @HiveField(18)
  final String? totalLike;
  @HiveField(19)
  final String? totalDislike;
  @HiveField(20)
  final String? feedTable;
  @HiveField(21)
  final String? text;
  @HiveField(22)
  final String? profilePageId;
  @HiveField(23)
  final String? userServerId;
  @HiveField(24)
  final String? userName;
  @HiveField(25)
  final String? fullName;
  @HiveField(26)
  final String? gender;
  @HiveField(27)
  final String? userImage;
  @HiveField(28)
  final String? isInvisible;
  @HiveField(29)
  final String? userGroupId;
  @HiveField(30)
  final String? languageId;
  @HiveField(31)
  final String? lastActivity;
  @HiveField(32)
  final String? birthday;
  @HiveField(33)
  final String? countryIso;
  @HiveField(34)
  final int? iteration;
  @HiveField(35)
  final List<dynamic>? extraData;
  @HiveField(36)
  final bool? isHidden;
  @HiveField(37)
  final int? totalHidden;
  @HiveField(38)
  final String? hideIds;
  @HiveField(39)
  final bool? hideThis;
  @HiveField(40)
  final String? postConvertTime;
  @HiveField(41)
  final CommentChildrenClassEntity? children;

  ChildrenCommentEntity({
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
}

@HiveType(typeId: 8)
class CommentChildrenClassEntity {
  @HiveField(1)
  final int? total;
  @HiveField(2)
  final List<dynamic>? comments;

  CommentChildrenClassEntity({
    this.total,
    this.comments,
  });
}

@HiveType(typeId: 9)
class CustomDataCacheEntity {
  @HiveField(1)
  final String? parentUserId;
  @HiveField(2)
  final dynamic parentProfilePageId;
  @HiveField(3)
  final dynamic userParentServerId;
  @HiveField(4)
  final dynamic parentUserName;
  @HiveField(5)
  final dynamic parentFullName;
  @HiveField(6)
  final dynamic parentGender;
  @HiveField(7)
  final dynamic parentUserImage;
  @HiveField(8)
  final dynamic parentIsInvisible;
  @HiveField(9)
  final dynamic parentUserGroupId;
  @HiveField(10)
  final dynamic parentLanguageId;
  @HiveField(11)
  final dynamic parentLastActivity;
  @HiveField(12)
  final dynamic parentBirthday;
  @HiveField(13)
  final dynamic parentCountryIso;
  @HiveField(14)
  final String? photoId;
  @HiveField(15)
  final String? albumId;
  @HiveField(16)
  final String? viewId;
  @HiveField(17)
  final String? moduleId;
  @HiveField(18)
  final String? groupId;
  @HiveField(19)
  final String? typeId;
  @HiveField(20)
  final String? privacy;
  @HiveField(21)
  final String? privacyComment;
  @HiveField(22)
  final String? title;
  @HiveField(23)
  final String? userId;
  @HiveField(24)
  final String? destination;
  @HiveField(25)
  final String? serverId;
  @HiveField(26)
  final String? mature;
  @HiveField(27)
  final String? allowComment;
  @HiveField(28)
  final String? allowRate;
  @HiveField(29)
  final String? timeStamp;
  @HiveField(30)
  final String? totalView;
  @HiveField(31)
  final String? totalComment;
  @HiveField(32)
  final String? totalDownload;
  @HiveField(33)
  final String? totalRating;
  @HiveField(34)
  final String? totalVote;
  @HiveField(35)
  final String? totalBattle;
  @HiveField(36)
  final String? totalLike;
  @HiveField(37)
  final String? totalDislike;
  @HiveField(38)
  final String? isFeatured;
  @HiveField(39)
  final String? isCover;
  @HiveField(40)
  final String? allowDownload;
  @HiveField(41)
  final String? isSponsor;
  @HiveField(42)
  final String? ordering;
  @HiveField(43)
  final String? isProfilePhoto;
  @HiveField(44)
  final String? isDay;
  @HiveField(45)
  final dynamic tags;
  @HiveField(46)
  final String? isCoverPhoto;
  @HiveField(47)
  final String? isTemp;
  @HiveField(48)
  final String? description;
  @HiveField(49)
  final dynamic locationLatlng;
  @HiveField(50)
  final dynamic locationName;
  @HiveField(51)
  final dynamic extraPhotoId;
  @HiveField(52)
  final String? name;
  @HiveField(53)
  final String? timelineId;
  @HiveField(54)
  final dynamic isLiked;
  @HiveField(55)
  final String? videoId;
  @HiveField(56)
  final String? statusInfo;
  @HiveField(57)
  final String? videoTotalView;
  @HiveField(58)
  final String? itemId;
  @HiveField(59)
  final String? imagePath;
  @HiveField(60)
  final String? imageServerId;
  @HiveField(61)
  final String? isStream;
  @HiveField(62)
  final String? text;
  @HiveField(63)
  final String? videoUrl;
  @HiveField(64)
  final String? embedCode;
  @HiveField(65)
  final String? duration;
  @HiveField(66)
  final bool? isInFeed;
  @HiveField(67)
  final String? fallbackImagePath;

  CustomDataCacheEntity({
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
}

@HiveType(typeId: 10)
class IconEntity {
  @HiveField(1)
  final String? likeTypeId;
  @HiveField(2)
  final String? imagePath;
  @HiveField(3)
  final String? countIcon;

  IconEntity({
    this.likeTypeId,
    this.imagePath,
    this.countIcon,
  });
}

@HiveType(typeId: 11)
class LikesClassEntity {
  @HiveField(1)
  final String? likeId;
  @HiveField(2)
  final String? typeId;
  @HiveField(3)
  final String? itemId;
  @HiveField(4)
  final String? userId;
  @HiveField(5)
  final String? feedTable;
  @HiveField(6)
  final String? timeStamp;
  @HiveField(7)
  final String? reactId;
  @HiveField(8)
  final String? likeTypeId;
  @HiveField(9)
  final String? profilePageId;
  @HiveField(10)
  final String? userServerId;
  @HiveField(11)
  final String? userName;
  @HiveField(12)
  final String? fullName;
  @HiveField(13)
  final String? gender;
  @HiveField(14)
  final String? userImage;
  @HiveField(15)
  final String? isInvisible;
  @HiveField(16)
  final String? userGroupId;
  @HiveField(17)
  final String? languageId;
  @HiveField(18)
  final String? lastActivity;
  @HiveField(19)
  final String? birthday;
  @HiveField(20)
  final String? countryIso;
  @HiveField(21)
  final dynamic actionTimeStamp;
  @HiveField(22)
  final dynamic isFriend;

  LikesClassEntity({
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
}

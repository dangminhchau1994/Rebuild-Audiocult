// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FeedEntityAdapter extends TypeAdapter<FeedEntity> {
  @override
  final int typeId = 3;

  @override
  FeedEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FeedEntity(
      status: fields[1] as String?,
      data: (fields[2] as List?)?.cast<FeedDataEntity>(),
      message: fields[3] as String?,
      error: fields[4] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, FeedEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.status)
      ..writeByte(2)
      ..write(obj.data)
      ..writeByte(3)
      ..write(obj.message)
      ..writeByte(4)
      ..write(obj.error);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FeedEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FeedDataEntityAdapter extends TypeAdapter<FeedDataEntity> {
  @override
  final int typeId = 4;

  @override
  FeedDataEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FeedDataEntity(
      feedId: fields[1] as String?,
      appId: fields[2] as String?,
      privacy: fields[3] as String?,
      privacyComment: fields[4] as String?,
      typeId: fields[5] as String?,
      userId: fields[6] as String?,
      parentUserId: fields[7] as String?,
      itemId: fields[8] as String?,
      timeStamp: fields[9] as String?,
      feedReference: fields[10] as String?,
      parentFeedId: fields[11] as String?,
      parentModuleId: fields[12] as dynamic,
      timeUpdate: fields[13] as String?,
      content: fields[14] as dynamic,
      totalView: fields[15] as String?,
      userName: fields[16] as String?,
      fullName: fields[17] as String?,
      gender: fields[18] as String?,
      userImage: fields[19] as String?,
      userGroupId: fields[20] as String?,
      languageId: fields[21] as String?,
      feedTimeStamp: fields[22] as String?,
      canPostComment: fields[23] as bool?,
      feedStatus: fields[24] as String?,
      feedTitle: fields[25] as String?,
      feedLink: fields[26] as String?,
      totalComment: fields[27] as String?,
      feedTotalLike: fields[28] as String?,
      feedIsLiked: fields[29] as bool?,
      feedIcon: fields[30] as String?,
      enableLike: fields[31] as bool?,
      commentTypeId: fields[32] as String?,
      likeTypeId: fields[33] as String?,
      totalFriendsTagged: fields[34] as String?,
      likes: (fields[35] as Map?)?.cast<int, LikesClassEntity>(),
      canLike: fields[36] as bool?,
      canComment: fields[37] as bool?,
      canShare: fields[38] as bool?,
      totalAction: fields[39] as int?,
      statusBackground: fields[40] as String?,
      parentFeed: fields[41] as dynamic,
      lastIcon: fields[42] as IconEntity?,
      icons: (fields[43] as List?)?.cast<IconEntity>(),
      totalImage: fields[44] as int?,
      feedImageUrl: (fields[45] as List?)?.cast<String>(),
      customDataCache: fields[46] as CustomDataCacheEntity?,
      feedInfo: fields[47] as String?,
      comments: (fields[48] as List?)?.cast<CommentEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, FeedDataEntity obj) {
    writer
      ..writeByte(48)
      ..writeByte(1)
      ..write(obj.feedId)
      ..writeByte(2)
      ..write(obj.appId)
      ..writeByte(3)
      ..write(obj.privacy)
      ..writeByte(4)
      ..write(obj.privacyComment)
      ..writeByte(5)
      ..write(obj.typeId)
      ..writeByte(6)
      ..write(obj.userId)
      ..writeByte(7)
      ..write(obj.parentUserId)
      ..writeByte(8)
      ..write(obj.itemId)
      ..writeByte(9)
      ..write(obj.timeStamp)
      ..writeByte(10)
      ..write(obj.feedReference)
      ..writeByte(11)
      ..write(obj.parentFeedId)
      ..writeByte(12)
      ..write(obj.parentModuleId)
      ..writeByte(13)
      ..write(obj.timeUpdate)
      ..writeByte(14)
      ..write(obj.content)
      ..writeByte(15)
      ..write(obj.totalView)
      ..writeByte(16)
      ..write(obj.userName)
      ..writeByte(17)
      ..write(obj.fullName)
      ..writeByte(18)
      ..write(obj.gender)
      ..writeByte(19)
      ..write(obj.userImage)
      ..writeByte(20)
      ..write(obj.userGroupId)
      ..writeByte(21)
      ..write(obj.languageId)
      ..writeByte(22)
      ..write(obj.feedTimeStamp)
      ..writeByte(23)
      ..write(obj.canPostComment)
      ..writeByte(24)
      ..write(obj.feedStatus)
      ..writeByte(25)
      ..write(obj.feedTitle)
      ..writeByte(26)
      ..write(obj.feedLink)
      ..writeByte(27)
      ..write(obj.totalComment)
      ..writeByte(28)
      ..write(obj.feedTotalLike)
      ..writeByte(29)
      ..write(obj.feedIsLiked)
      ..writeByte(30)
      ..write(obj.feedIcon)
      ..writeByte(31)
      ..write(obj.enableLike)
      ..writeByte(32)
      ..write(obj.commentTypeId)
      ..writeByte(33)
      ..write(obj.likeTypeId)
      ..writeByte(34)
      ..write(obj.totalFriendsTagged)
      ..writeByte(35)
      ..write(obj.likes)
      ..writeByte(36)
      ..write(obj.canLike)
      ..writeByte(37)
      ..write(obj.canComment)
      ..writeByte(38)
      ..write(obj.canShare)
      ..writeByte(39)
      ..write(obj.totalAction)
      ..writeByte(40)
      ..write(obj.statusBackground)
      ..writeByte(41)
      ..write(obj.parentFeed)
      ..writeByte(42)
      ..write(obj.lastIcon)
      ..writeByte(43)
      ..write(obj.icons)
      ..writeByte(44)
      ..write(obj.totalImage)
      ..writeByte(45)
      ..write(obj.feedImageUrl)
      ..writeByte(46)
      ..write(obj.customDataCache)
      ..writeByte(47)
      ..write(obj.feedInfo)
      ..writeByte(48)
      ..write(obj.comments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FeedDataEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CommentEntityAdapter extends TypeAdapter<CommentEntity> {
  @override
  final int typeId = 5;

  @override
  CommentEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommentEntity(
      isLiked: fields[1] as dynamic,
      commentId: fields[2] as String?,
      parentId: fields[3] as String?,
      typeId: fields[4] as String?,
      itemId: fields[5] as String?,
      userId: fields[6] as String?,
      ownerUserId: fields[7] as String?,
      timeStamp: fields[8] as String?,
      updateTime: fields[9] as String?,
      updateUser: fields[10] as String?,
      rating: fields[11] as dynamic,
      ipAddress: fields[12] as String?,
      author: fields[13] as String?,
      authorEmail: fields[14] as dynamic,
      authorUrl: fields[15] as dynamic,
      viewId: fields[16] as String?,
      childTotal: fields[17] as String?,
      totalLike: fields[18] as String?,
      totalDislike: fields[19] as String?,
      feedTable: fields[20] as String?,
      text: fields[21] as String?,
      profilePageId: fields[22] as String?,
      userServerId: fields[23] as String?,
      userName: fields[24] as String?,
      fullName: fields[25] as String?,
      gender: fields[26] as String?,
      userImage: fields[27] as String?,
      isInvisible: fields[28] as String?,
      userGroupId: fields[29] as String?,
      languageId: fields[30] as String?,
      lastActivity: fields[31] as String?,
      birthday: fields[32] as String?,
      countryIso: fields[33] as String?,
      extraData: (fields[34] as List?)?.cast<dynamic>(),
      isHidden: fields[35] as bool?,
      totalHidden: fields[36] as int?,
      hideIds: fields[37] as String?,
      hideThis: fields[38] as bool?,
      postConvertTime: fields[39] as String?,
      children: fields[40] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, CommentEntity obj) {
    writer
      ..writeByte(40)
      ..writeByte(1)
      ..write(obj.isLiked)
      ..writeByte(2)
      ..write(obj.commentId)
      ..writeByte(3)
      ..write(obj.parentId)
      ..writeByte(4)
      ..write(obj.typeId)
      ..writeByte(5)
      ..write(obj.itemId)
      ..writeByte(6)
      ..write(obj.userId)
      ..writeByte(7)
      ..write(obj.ownerUserId)
      ..writeByte(8)
      ..write(obj.timeStamp)
      ..writeByte(9)
      ..write(obj.updateTime)
      ..writeByte(10)
      ..write(obj.updateUser)
      ..writeByte(11)
      ..write(obj.rating)
      ..writeByte(12)
      ..write(obj.ipAddress)
      ..writeByte(13)
      ..write(obj.author)
      ..writeByte(14)
      ..write(obj.authorEmail)
      ..writeByte(15)
      ..write(obj.authorUrl)
      ..writeByte(16)
      ..write(obj.viewId)
      ..writeByte(17)
      ..write(obj.childTotal)
      ..writeByte(18)
      ..write(obj.totalLike)
      ..writeByte(19)
      ..write(obj.totalDislike)
      ..writeByte(20)
      ..write(obj.feedTable)
      ..writeByte(21)
      ..write(obj.text)
      ..writeByte(22)
      ..write(obj.profilePageId)
      ..writeByte(23)
      ..write(obj.userServerId)
      ..writeByte(24)
      ..write(obj.userName)
      ..writeByte(25)
      ..write(obj.fullName)
      ..writeByte(26)
      ..write(obj.gender)
      ..writeByte(27)
      ..write(obj.userImage)
      ..writeByte(28)
      ..write(obj.isInvisible)
      ..writeByte(29)
      ..write(obj.userGroupId)
      ..writeByte(30)
      ..write(obj.languageId)
      ..writeByte(31)
      ..write(obj.lastActivity)
      ..writeByte(32)
      ..write(obj.birthday)
      ..writeByte(33)
      ..write(obj.countryIso)
      ..writeByte(34)
      ..write(obj.extraData)
      ..writeByte(35)
      ..write(obj.isHidden)
      ..writeByte(36)
      ..write(obj.totalHidden)
      ..writeByte(37)
      ..write(obj.hideIds)
      ..writeByte(38)
      ..write(obj.hideThis)
      ..writeByte(39)
      ..write(obj.postConvertTime)
      ..writeByte(40)
      ..write(obj.children);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChildrenChildrenEntityAdapter
    extends TypeAdapter<ChildrenChildrenEntity> {
  @override
  final int typeId = 6;

  @override
  ChildrenChildrenEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChildrenChildrenEntity(
      total: fields[1] as int?,
      comments: (fields[2] as List?)?.cast<ChildrenCommentEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChildrenChildrenEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.total)
      ..writeByte(2)
      ..write(obj.comments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChildrenChildrenEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChildrenCommentEntityAdapter extends TypeAdapter<ChildrenCommentEntity> {
  @override
  final int typeId = 7;

  @override
  ChildrenCommentEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChildrenCommentEntity(
      isLiked: fields[1] as dynamic,
      commentId: fields[2] as String?,
      parentId: fields[3] as String?,
      typeId: fields[4] as String?,
      itemId: fields[5] as String?,
      userId: fields[6] as String?,
      ownerUserId: fields[7] as String?,
      timeStamp: fields[8] as String?,
      updateTime: fields[9] as String?,
      updateUser: fields[10] as dynamic,
      rating: fields[11] as dynamic,
      ipAddress: fields[12] as String?,
      author: fields[13] as String?,
      authorEmail: fields[14] as dynamic,
      authorUrl: fields[15] as dynamic,
      viewId: fields[16] as String?,
      childTotal: fields[17] as String?,
      totalLike: fields[18] as String?,
      totalDislike: fields[19] as String?,
      feedTable: fields[20] as String?,
      text: fields[21] as String?,
      profilePageId: fields[22] as String?,
      userServerId: fields[23] as String?,
      userName: fields[24] as String?,
      fullName: fields[25] as String?,
      gender: fields[26] as String?,
      userImage: fields[27] as String?,
      isInvisible: fields[28] as String?,
      userGroupId: fields[29] as String?,
      languageId: fields[30] as String?,
      lastActivity: fields[31] as String?,
      birthday: fields[32] as String?,
      countryIso: fields[33] as String?,
      iteration: fields[34] as int?,
      extraData: (fields[35] as List?)?.cast<dynamic>(),
      isHidden: fields[36] as bool?,
      totalHidden: fields[37] as int?,
      hideIds: fields[38] as String?,
      hideThis: fields[39] as bool?,
      postConvertTime: fields[40] as String?,
      children: fields[41] as CommentChildrenClassEntity?,
    );
  }

  @override
  void write(BinaryWriter writer, ChildrenCommentEntity obj) {
    writer
      ..writeByte(41)
      ..writeByte(1)
      ..write(obj.isLiked)
      ..writeByte(2)
      ..write(obj.commentId)
      ..writeByte(3)
      ..write(obj.parentId)
      ..writeByte(4)
      ..write(obj.typeId)
      ..writeByte(5)
      ..write(obj.itemId)
      ..writeByte(6)
      ..write(obj.userId)
      ..writeByte(7)
      ..write(obj.ownerUserId)
      ..writeByte(8)
      ..write(obj.timeStamp)
      ..writeByte(9)
      ..write(obj.updateTime)
      ..writeByte(10)
      ..write(obj.updateUser)
      ..writeByte(11)
      ..write(obj.rating)
      ..writeByte(12)
      ..write(obj.ipAddress)
      ..writeByte(13)
      ..write(obj.author)
      ..writeByte(14)
      ..write(obj.authorEmail)
      ..writeByte(15)
      ..write(obj.authorUrl)
      ..writeByte(16)
      ..write(obj.viewId)
      ..writeByte(17)
      ..write(obj.childTotal)
      ..writeByte(18)
      ..write(obj.totalLike)
      ..writeByte(19)
      ..write(obj.totalDislike)
      ..writeByte(20)
      ..write(obj.feedTable)
      ..writeByte(21)
      ..write(obj.text)
      ..writeByte(22)
      ..write(obj.profilePageId)
      ..writeByte(23)
      ..write(obj.userServerId)
      ..writeByte(24)
      ..write(obj.userName)
      ..writeByte(25)
      ..write(obj.fullName)
      ..writeByte(26)
      ..write(obj.gender)
      ..writeByte(27)
      ..write(obj.userImage)
      ..writeByte(28)
      ..write(obj.isInvisible)
      ..writeByte(29)
      ..write(obj.userGroupId)
      ..writeByte(30)
      ..write(obj.languageId)
      ..writeByte(31)
      ..write(obj.lastActivity)
      ..writeByte(32)
      ..write(obj.birthday)
      ..writeByte(33)
      ..write(obj.countryIso)
      ..writeByte(34)
      ..write(obj.iteration)
      ..writeByte(35)
      ..write(obj.extraData)
      ..writeByte(36)
      ..write(obj.isHidden)
      ..writeByte(37)
      ..write(obj.totalHidden)
      ..writeByte(38)
      ..write(obj.hideIds)
      ..writeByte(39)
      ..write(obj.hideThis)
      ..writeByte(40)
      ..write(obj.postConvertTime)
      ..writeByte(41)
      ..write(obj.children);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChildrenCommentEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CommentChildrenClassEntityAdapter
    extends TypeAdapter<CommentChildrenClassEntity> {
  @override
  final int typeId = 8;

  @override
  CommentChildrenClassEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommentChildrenClassEntity(
      total: fields[1] as int?,
      comments: (fields[2] as List?)?.cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, CommentChildrenClassEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.total)
      ..writeByte(2)
      ..write(obj.comments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentChildrenClassEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CustomDataCacheEntityAdapter extends TypeAdapter<CustomDataCacheEntity> {
  @override
  final int typeId = 9;

  @override
  CustomDataCacheEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomDataCacheEntity(
      parentUserId: fields[1] as String?,
      parentProfilePageId: fields[2] as dynamic,
      userParentServerId: fields[3] as dynamic,
      parentUserName: fields[4] as dynamic,
      parentFullName: fields[5] as dynamic,
      parentGender: fields[6] as dynamic,
      parentUserImage: fields[7] as dynamic,
      parentIsInvisible: fields[8] as dynamic,
      parentUserGroupId: fields[9] as dynamic,
      parentLanguageId: fields[10] as dynamic,
      parentLastActivity: fields[11] as dynamic,
      parentBirthday: fields[12] as dynamic,
      parentCountryIso: fields[13] as dynamic,
      photoId: fields[14] as String?,
      albumId: fields[15] as String?,
      viewId: fields[16] as String?,
      moduleId: fields[17] as String?,
      groupId: fields[18] as String?,
      typeId: fields[19] as String?,
      privacy: fields[20] as String?,
      privacyComment: fields[21] as String?,
      title: fields[22] as String?,
      userId: fields[23] as String?,
      destination: fields[24] as String?,
      serverId: fields[25] as String?,
      mature: fields[26] as String?,
      allowComment: fields[27] as String?,
      allowRate: fields[28] as String?,
      timeStamp: fields[29] as String?,
      totalView: fields[30] as String?,
      totalComment: fields[31] as String?,
      totalDownload: fields[32] as String?,
      totalRating: fields[33] as String?,
      totalVote: fields[34] as String?,
      totalBattle: fields[35] as String?,
      totalLike: fields[36] as String?,
      totalDislike: fields[37] as String?,
      isFeatured: fields[38] as String?,
      isCover: fields[39] as String?,
      allowDownload: fields[40] as String?,
      isSponsor: fields[41] as String?,
      ordering: fields[42] as String?,
      isProfilePhoto: fields[43] as String?,
      isDay: fields[44] as String?,
      tags: fields[45] as dynamic,
      isCoverPhoto: fields[46] as String?,
      isTemp: fields[47] as String?,
      description: fields[48] as String?,
      locationLatlng: fields[49] as dynamic,
      locationName: fields[50] as dynamic,
      extraPhotoId: fields[51] as dynamic,
      name: fields[52] as String?,
      timelineId: fields[53] as String?,
      isLiked: fields[54] as dynamic,
      videoId: fields[55] as String?,
      statusInfo: fields[56] as String?,
      videoTotalView: fields[57] as String?,
      itemId: fields[58] as String?,
      imagePath: fields[59] as String?,
      imageServerId: fields[60] as String?,
      isStream: fields[61] as String?,
      text: fields[62] as String?,
      videoUrl: fields[63] as String?,
      embedCode: fields[64] as String?,
      duration: fields[65] as String?,
      isInFeed: fields[66] as bool?,
      fallbackImagePath: fields[67] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CustomDataCacheEntity obj) {
    writer
      ..writeByte(67)
      ..writeByte(1)
      ..write(obj.parentUserId)
      ..writeByte(2)
      ..write(obj.parentProfilePageId)
      ..writeByte(3)
      ..write(obj.userParentServerId)
      ..writeByte(4)
      ..write(obj.parentUserName)
      ..writeByte(5)
      ..write(obj.parentFullName)
      ..writeByte(6)
      ..write(obj.parentGender)
      ..writeByte(7)
      ..write(obj.parentUserImage)
      ..writeByte(8)
      ..write(obj.parentIsInvisible)
      ..writeByte(9)
      ..write(obj.parentUserGroupId)
      ..writeByte(10)
      ..write(obj.parentLanguageId)
      ..writeByte(11)
      ..write(obj.parentLastActivity)
      ..writeByte(12)
      ..write(obj.parentBirthday)
      ..writeByte(13)
      ..write(obj.parentCountryIso)
      ..writeByte(14)
      ..write(obj.photoId)
      ..writeByte(15)
      ..write(obj.albumId)
      ..writeByte(16)
      ..write(obj.viewId)
      ..writeByte(17)
      ..write(obj.moduleId)
      ..writeByte(18)
      ..write(obj.groupId)
      ..writeByte(19)
      ..write(obj.typeId)
      ..writeByte(20)
      ..write(obj.privacy)
      ..writeByte(21)
      ..write(obj.privacyComment)
      ..writeByte(22)
      ..write(obj.title)
      ..writeByte(23)
      ..write(obj.userId)
      ..writeByte(24)
      ..write(obj.destination)
      ..writeByte(25)
      ..write(obj.serverId)
      ..writeByte(26)
      ..write(obj.mature)
      ..writeByte(27)
      ..write(obj.allowComment)
      ..writeByte(28)
      ..write(obj.allowRate)
      ..writeByte(29)
      ..write(obj.timeStamp)
      ..writeByte(30)
      ..write(obj.totalView)
      ..writeByte(31)
      ..write(obj.totalComment)
      ..writeByte(32)
      ..write(obj.totalDownload)
      ..writeByte(33)
      ..write(obj.totalRating)
      ..writeByte(34)
      ..write(obj.totalVote)
      ..writeByte(35)
      ..write(obj.totalBattle)
      ..writeByte(36)
      ..write(obj.totalLike)
      ..writeByte(37)
      ..write(obj.totalDislike)
      ..writeByte(38)
      ..write(obj.isFeatured)
      ..writeByte(39)
      ..write(obj.isCover)
      ..writeByte(40)
      ..write(obj.allowDownload)
      ..writeByte(41)
      ..write(obj.isSponsor)
      ..writeByte(42)
      ..write(obj.ordering)
      ..writeByte(43)
      ..write(obj.isProfilePhoto)
      ..writeByte(44)
      ..write(obj.isDay)
      ..writeByte(45)
      ..write(obj.tags)
      ..writeByte(46)
      ..write(obj.isCoverPhoto)
      ..writeByte(47)
      ..write(obj.isTemp)
      ..writeByte(48)
      ..write(obj.description)
      ..writeByte(49)
      ..write(obj.locationLatlng)
      ..writeByte(50)
      ..write(obj.locationName)
      ..writeByte(51)
      ..write(obj.extraPhotoId)
      ..writeByte(52)
      ..write(obj.name)
      ..writeByte(53)
      ..write(obj.timelineId)
      ..writeByte(54)
      ..write(obj.isLiked)
      ..writeByte(55)
      ..write(obj.videoId)
      ..writeByte(56)
      ..write(obj.statusInfo)
      ..writeByte(57)
      ..write(obj.videoTotalView)
      ..writeByte(58)
      ..write(obj.itemId)
      ..writeByte(59)
      ..write(obj.imagePath)
      ..writeByte(60)
      ..write(obj.imageServerId)
      ..writeByte(61)
      ..write(obj.isStream)
      ..writeByte(62)
      ..write(obj.text)
      ..writeByte(63)
      ..write(obj.videoUrl)
      ..writeByte(64)
      ..write(obj.embedCode)
      ..writeByte(65)
      ..write(obj.duration)
      ..writeByte(66)
      ..write(obj.isInFeed)
      ..writeByte(67)
      ..write(obj.fallbackImagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomDataCacheEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class IconEntityAdapter extends TypeAdapter<IconEntity> {
  @override
  final int typeId = 10;

  @override
  IconEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IconEntity(
      likeTypeId: fields[1] as String?,
      imagePath: fields[2] as String?,
      countIcon: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, IconEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.likeTypeId)
      ..writeByte(2)
      ..write(obj.imagePath)
      ..writeByte(3)
      ..write(obj.countIcon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IconEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LikesClassEntityAdapter extends TypeAdapter<LikesClassEntity> {
  @override
  final int typeId = 11;

  @override
  LikesClassEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LikesClassEntity(
      likeId: fields[1] as String?,
      typeId: fields[2] as String?,
      itemId: fields[3] as String?,
      userId: fields[4] as String?,
      feedTable: fields[5] as String?,
      timeStamp: fields[6] as String?,
      reactId: fields[7] as String?,
      likeTypeId: fields[8] as String?,
      profilePageId: fields[9] as String?,
      userServerId: fields[10] as String?,
      userName: fields[11] as String?,
      fullName: fields[12] as String?,
      gender: fields[13] as String?,
      userImage: fields[14] as String?,
      isInvisible: fields[15] as String?,
      userGroupId: fields[16] as String?,
      languageId: fields[17] as String?,
      lastActivity: fields[18] as String?,
      birthday: fields[19] as String?,
      countryIso: fields[20] as String?,
      actionTimeStamp: fields[21] as dynamic,
      isFriend: fields[22] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, LikesClassEntity obj) {
    writer
      ..writeByte(22)
      ..writeByte(1)
      ..write(obj.likeId)
      ..writeByte(2)
      ..write(obj.typeId)
      ..writeByte(3)
      ..write(obj.itemId)
      ..writeByte(4)
      ..write(obj.userId)
      ..writeByte(5)
      ..write(obj.feedTable)
      ..writeByte(6)
      ..write(obj.timeStamp)
      ..writeByte(7)
      ..write(obj.reactId)
      ..writeByte(8)
      ..write(obj.likeTypeId)
      ..writeByte(9)
      ..write(obj.profilePageId)
      ..writeByte(10)
      ..write(obj.userServerId)
      ..writeByte(11)
      ..write(obj.userName)
      ..writeByte(12)
      ..write(obj.fullName)
      ..writeByte(13)
      ..write(obj.gender)
      ..writeByte(14)
      ..write(obj.userImage)
      ..writeByte(15)
      ..write(obj.isInvisible)
      ..writeByte(16)
      ..write(obj.userGroupId)
      ..writeByte(17)
      ..write(obj.languageId)
      ..writeByte(18)
      ..write(obj.lastActivity)
      ..writeByte(19)
      ..write(obj.birthday)
      ..writeByte(20)
      ..write(obj.countryIso)
      ..writeByte(21)
      ..write(obj.actionTimeStamp)
      ..writeByte(22)
      ..write(obj.isFriend);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LikesClassEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

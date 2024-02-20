// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileDataEntityAdapter extends TypeAdapter<ProfileDataEntity> {
  @override
  final int typeId = 2;

  @override
  ProfileDataEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileDataEntity(
      coverPhotoExists: fields[0] as bool?,
      userId: fields[1] as String?,
      userGroupId: fields[2] as String?,
      userName: fields[3] as String?,
      fullName: fields[4] as String?,
      email: fields[5] as String?,
      gender: fields[6] as String?,
      birthday: fields[7] as String?,
      birthdaySearch: fields[8] as String?,
      countryIso: fields[9] as String?,
      languageId: fields[10] as String?,
      timeZone: fields[11] as String?,
      userImage: fields[12] as String?,
      isOnline: fields[13] as bool?,
      title: fields[14] as String?,
      isFriend: fields[15] as bool?,
      isFriendOfFriend: fields[16] as bool?,
      isFriendRequest: fields[17] as bool?,
      blockable: fields[18] as bool?,
      isBlocked: fields[19] as bool?,
      relationId: fields[20] as String?,
      relationWithId: fields[21] as String?,
      relationPhrase: fields[22] as String?,
      coverPhoto: fields[23] as String?,
      locationString: fields[24] as String?,
      totalSubscriptions: fields[25] as int?,
      totalSubscribers: fields[26] as int?,
      biography: fields[27] as String?,
      favoriteGenresOfMusic: (fields[28] as List?)?.cast<String>(),
      audioArtistCategory: (fields[29] as List?)?.cast<String>(),
      isSubscribed: fields[30] as int?,
      lat: fields[31] as String?,
      lng: fields[32] as String?,
      currency: fields[33] as String?,
      accessToken: fields[34] as String?,
      lastLogin: fields[35] as String?,
      joined: fields[36] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileDataEntity obj) {
    writer
      ..writeByte(37)
      ..writeByte(0)
      ..write(obj.coverPhotoExists)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.userGroupId)
      ..writeByte(3)
      ..write(obj.userName)
      ..writeByte(4)
      ..write(obj.fullName)
      ..writeByte(5)
      ..write(obj.email)
      ..writeByte(6)
      ..write(obj.gender)
      ..writeByte(7)
      ..write(obj.birthday)
      ..writeByte(8)
      ..write(obj.birthdaySearch)
      ..writeByte(9)
      ..write(obj.countryIso)
      ..writeByte(10)
      ..write(obj.languageId)
      ..writeByte(11)
      ..write(obj.timeZone)
      ..writeByte(12)
      ..write(obj.userImage)
      ..writeByte(13)
      ..write(obj.isOnline)
      ..writeByte(14)
      ..write(obj.title)
      ..writeByte(15)
      ..write(obj.isFriend)
      ..writeByte(16)
      ..write(obj.isFriendOfFriend)
      ..writeByte(17)
      ..write(obj.isFriendRequest)
      ..writeByte(18)
      ..write(obj.blockable)
      ..writeByte(19)
      ..write(obj.isBlocked)
      ..writeByte(20)
      ..write(obj.relationId)
      ..writeByte(21)
      ..write(obj.relationWithId)
      ..writeByte(22)
      ..write(obj.relationPhrase)
      ..writeByte(23)
      ..write(obj.coverPhoto)
      ..writeByte(24)
      ..write(obj.locationString)
      ..writeByte(25)
      ..write(obj.totalSubscriptions)
      ..writeByte(26)
      ..write(obj.totalSubscribers)
      ..writeByte(27)
      ..write(obj.biography)
      ..writeByte(28)
      ..write(obj.favoriteGenresOfMusic)
      ..writeByte(29)
      ..write(obj.audioArtistCategory)
      ..writeByte(30)
      ..write(obj.isSubscribed)
      ..writeByte(31)
      ..write(obj.lat)
      ..writeByte(32)
      ..write(obj.lng)
      ..writeByte(33)
      ..write(obj.currency)
      ..writeByte(34)
      ..write(obj.accessToken)
      ..writeByte(35)
      ..write(obj.lastLogin)
      ..writeByte(36)
      ..write(obj.joined);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileDataEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

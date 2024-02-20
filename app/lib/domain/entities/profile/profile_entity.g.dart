// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileEntityAdapter extends TypeAdapter<ProfileEntity> {
  @override
  final int typeId = 1;

  @override
  ProfileEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileEntity(
      error: fields[2] as dynamic,
      message: fields[0] as String?,
      status: fields[1] as String?,
      data: fields[3] as ProfileDataEntity?,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.message)
      ..writeByte(1)
      ..write(obj.status)
      ..writeByte(2)
      ..write(obj.error)
      ..writeByte(3)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

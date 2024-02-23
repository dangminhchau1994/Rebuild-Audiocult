// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnnouncementEntityAdapter extends TypeAdapter<AnnouncementEntity> {
  @override
  final int typeId = 12;

  @override
  AnnouncementEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnnouncementEntity(
      announcementId: fields[1] as String?,
      subjectVar: fields[2] as String?,
      introVar: fields[3] as String?,
      contentVar: fields[4] as String?,
      canBeClosed: fields[5] as String?,
      showInDashboard: fields[6] as String?,
      style: fields[7] as String?,
      isUrgent: fields[8] as String?,
      totalView: fields[9] as String?,
      buttonLink: fields[10] as String?,
      buttonText: fields[11] as String?,
      imagePath: fields[12] as String?,
      postedOn: fields[13] as String?,
      iconImage: fields[14] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AnnouncementEntity obj) {
    writer
      ..writeByte(14)
      ..writeByte(1)
      ..write(obj.announcementId)
      ..writeByte(2)
      ..write(obj.subjectVar)
      ..writeByte(3)
      ..write(obj.introVar)
      ..writeByte(4)
      ..write(obj.contentVar)
      ..writeByte(5)
      ..write(obj.canBeClosed)
      ..writeByte(6)
      ..write(obj.showInDashboard)
      ..writeByte(7)
      ..write(obj.style)
      ..writeByte(8)
      ..write(obj.isUrgent)
      ..writeByte(9)
      ..write(obj.totalView)
      ..writeByte(10)
      ..write(obj.buttonLink)
      ..writeByte(11)
      ..write(obj.buttonText)
      ..writeByte(12)
      ..write(obj.imagePath)
      ..writeByte(13)
      ..write(obj.postedOn)
      ..writeByte(14)
      ..write(obj.iconImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnnouncementEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

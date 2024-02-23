import 'package:hive_flutter/hive_flutter.dart';
part 'announcement_entity.g.dart';

@HiveType(typeId: 12)
class AnnouncementEntity {
  @HiveField(1)
  final String? announcementId;
  @HiveField(2)
  final String? subjectVar;
  @HiveField(3)
  final String? introVar;
  @HiveField(4)
  final String? contentVar;
  @HiveField(5)
  final String? canBeClosed;
  @HiveField(6)
  final String? showInDashboard;
  @HiveField(7)
  final String? style;
  @HiveField(8)
  final String? isUrgent;
  @HiveField(9)
  final String? totalView;
  @HiveField(10)
  final String? buttonLink;
  @HiveField(11)
  final String? buttonText;
  @HiveField(12)
  final String? imagePath;
  @HiveField(13)
  final String? postedOn;
  @HiveField(14)
  final String? iconImage;

  AnnouncementEntity({
    this.announcementId,
    this.subjectVar,
    this.introVar,
    this.contentVar,
    this.canBeClosed,
    this.showInDashboard,
    this.style,
    this.isUrgent,
    this.totalView,
    this.buttonLink,
    this.buttonText,
    this.imagePath,
    this.postedOn,
    this.iconImage,
  });
}

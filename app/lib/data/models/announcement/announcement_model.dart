import 'package:app/domain/entities/announcement/announcement_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'announcement_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AnnouncementModel extends AnnouncementEntity {
  AnnouncementModel({
    final String? announcementId,
    final String? subjectVar,
    final String? introVar,
    final String? contentVar,
    final String? canBeClosed,
    final String? showInDashboard,
    final String? style,
    final String? isUrgent,
    final String? totalView,
    final String? buttonLink,
    final String? buttonText,
    final String? imagePath,
    final String? postedOn,
    final String? iconImage,
  }) : super(
          announcementId: announcementId,
          subjectVar: subjectVar,
          introVar: introVar,
          contentVar: contentVar,
          canBeClosed: canBeClosed,
          showInDashboard: showInDashboard,
          style: style,
          isUrgent: isUrgent,
          totalView: totalView,
          buttonLink: buttonLink,
          buttonText: buttonText,
          imagePath: imagePath,
          postedOn: postedOn,
          iconImage: iconImage,
        );

  factory AnnouncementModel.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnnouncementModelToJson(this);

  AnnouncementEntity toEntity() => AnnouncementEntity(
        announcementId: announcementId,
        subjectVar: subjectVar,
        introVar: introVar,
        contentVar: contentVar,
        canBeClosed: canBeClosed,
        showInDashboard: showInDashboard,
        style: style,
        isUrgent: isUrgent,
        totalView: totalView,
        buttonLink: buttonLink,
        buttonText: buttonText,
        imagePath: imagePath,
        postedOn: postedOn,
        iconImage: iconImage,
      );
}

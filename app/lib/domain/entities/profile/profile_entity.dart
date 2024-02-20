import 'package:app/domain/entities/register_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'profile_entity.g.dart';

@HiveType(typeId: 1)
class ProfileEntity {
  @HiveField(0)
  final String? message;
  @HiveField(1)
  final String? status;
  @HiveField(2)
  final dynamic error;
  @HiveField(3)
  final ProfileDataEntity? data;

  const ProfileEntity({
    this.error,
    this.message,
    this.status,
    this.data,
  });
}

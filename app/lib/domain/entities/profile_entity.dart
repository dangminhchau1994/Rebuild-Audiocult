import 'package:app/domain/entities/register_entity.dart';
import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String? message;
  final String? status;
  final dynamic error;
  final ProfileDataEntity? data;

  const ProfileEntity({
    this.error,
    this.message,
    this.status,
    this.data,
  });

  @override
  List<Object?> get props => [
        message,
        status,
        error,
        data,
      ];
}

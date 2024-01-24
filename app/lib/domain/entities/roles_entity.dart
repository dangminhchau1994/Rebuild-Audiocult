import 'package:equatable/equatable.dart';

class RolesEntity extends Equatable {
  final List<RoleEntity>? data;
  final String? status;
  final String? message;

  const RolesEntity({
    this.status,
    this.data,
    this.message,
  });

  @override
  List<Object?> get props => [
        status,
        data,
        message,
      ];
}

class RoleEntity extends Equatable {
  final String? userGroupId;
  final String? title;

  const RoleEntity({
    this.userGroupId,
    this.title,
  });

  @override
  List<Object?> get props => [
        userGroupId,
        title,
      ];
}

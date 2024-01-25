import 'package:app/domain/entities/roles_entity.dart';
import 'package:equatable/equatable.dart';

abstract class GetRolesState extends Equatable {
  const GetRolesState();

  @override
  List<Object> get props => [];
}

class GetRolesEmpty extends GetRolesState {}

class GetRolesLoading extends GetRolesState {}

class GetRolesLoaded extends GetRolesState {
  final RolesEntity data;

  const GetRolesLoaded({required this.data});

  @override
  List<Object> get props => [data];
}

class GetRolesError extends GetRolesState {
  final String message;

  const GetRolesError({required this.message});

  @override
  List<Object> get props => [message];
}

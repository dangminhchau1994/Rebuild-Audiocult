import 'package:equatable/equatable.dart';

abstract class GetRolesEvent extends Equatable {
  const GetRolesEvent();

  @override
  List<Object> get props => [];
}

class OnGetRoles extends GetRolesEvent {}

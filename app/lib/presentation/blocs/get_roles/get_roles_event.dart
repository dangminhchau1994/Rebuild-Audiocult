import 'package:app/domain/usecases/login_usecase.dart';
import 'package:equatable/equatable.dart';

abstract class GetRolesEvent extends Equatable {
  const GetRolesEvent();

  @override
  List<Object> get props => [];
}

class OnGetRoles extends GetRolesEvent {
  final String token;

  const OnGetRoles({required this.token});
}

class OnGetRoleCredential extends GetRolesEvent {
  final LoginParams params;

  const OnGetRoleCredential({required this.params});
}

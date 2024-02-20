import 'package:equatable/equatable.dart';

class LogoutEntity extends Equatable {
  final bool? revoke;

  const LogoutEntity({this.revoke});

  @override
  List<Object?> get props => [revoke];
}

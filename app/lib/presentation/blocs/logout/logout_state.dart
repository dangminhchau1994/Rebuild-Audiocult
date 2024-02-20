import 'package:app/domain/entities/logout_entity.dart';
import 'package:equatable/equatable.dart';

abstract class LogoutState extends Equatable {
  const LogoutState();
}

class LogoutInitial extends LogoutState {
  @override
  List<Object> get props => [];
}

class LogoutLoading extends LogoutState {
  @override
  List<Object> get props => [];
}

class LogoutSuccess extends LogoutState {
  final LogoutEntity data;

  const LogoutSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

class LogoutFailure extends LogoutState {
  final String? message;

  const LogoutFailure({this.message});

  @override
  List<Object> get props => [message ?? ''];
}

import 'package:app/domain/entities/base_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ResendPasswordState extends Equatable {
  const ResendPasswordState();
}

class ResendPasswordInitial extends ResendPasswordState {
  @override
  List<Object> get props => [];
}

class ResendPasswordLoading extends ResendPasswordState {
  @override
  List<Object> get props => [];
}

class ResendPasswordSuccess extends ResendPasswordState {
  final BaseEntity data;

  const ResendPasswordSuccess(this.data);

  @override
  List<Object> get props => [data];
}

class ResendPasswordFailure extends ResendPasswordState {
  final String message;

  const ResendPasswordFailure(this.message);

  @override
  List<Object> get props => [message];
}

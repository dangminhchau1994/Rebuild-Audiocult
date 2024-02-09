import 'package:app/domain/entities/base_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ResendCodeState extends Equatable {
  const ResendCodeState();
}

class ResendCodeInitial extends ResendCodeState {
  @override
  List<Object> get props => [];
}

class ResendCodeLoading extends ResendCodeState {
  @override
  List<Object> get props => [];
}

class ResendCodeSuccess extends ResendCodeState {
  final BaseEntity data;

  const ResendCodeSuccess(this.data);

  @override
  List<Object> get props => [data];
}

class ResendCodeFailure extends ResendCodeState {
  final String message;

  const ResendCodeFailure(this.message);

  @override
  List<Object> get props => [message];
}

import 'package:app/domain/entities/base_entity.dart';
import 'package:equatable/equatable.dart';

abstract class CreateNewPasswordState extends Equatable {
  const CreateNewPasswordState();

  @override
  List<Object> get props => [];
}

class CreateNewPasswordInitial extends CreateNewPasswordState {}

class CreateNewPasswordLoading extends CreateNewPasswordState {}

class CreateNewPasswordSuccess extends CreateNewPasswordState {
  final BaseEntity data;

  const CreateNewPasswordSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

class CreateNewPasswordFailure extends CreateNewPasswordState {
  final String? message;

  const CreateNewPasswordFailure({this.message});

  @override
  List<Object> get props => [message ?? ''];
}

import 'package:app/domain/entities/profile_entity.dart';
import 'package:equatable/equatable.dart';

abstract class GetProfileState extends Equatable {
  const GetProfileState();

  @override
  List<Object> get props => [];
}

class GetProfileInitial extends GetProfileState {}

class GetProfileLoading extends GetProfileState {}

class GetProfileSuccess extends GetProfileState {
  final ProfileEntity data;

  const GetProfileSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

class GetProfileError extends GetProfileState {
  final String? message;

  const GetProfileError({this.message});

  @override
  List<Object> get props => [message ?? ''];
}

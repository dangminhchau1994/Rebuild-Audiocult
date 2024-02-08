import 'package:equatable/equatable.dart';

class BaseEntity extends Equatable {
  final dynamic error;
  final dynamic message;
  final int? stausCode;
  final bool? isSuccess;

  const BaseEntity({
    this.error,
    this.message,
    this.stausCode,
    this.isSuccess,
  });

  @override
  List<Object?> get props => [
        error,
        message,
        stausCode,
        isSuccess,
      ];
}

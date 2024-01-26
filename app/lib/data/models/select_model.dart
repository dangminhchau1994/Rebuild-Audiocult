import 'package:equatable/equatable.dart';

class SelectModel extends Equatable {
  final String? iconPath;
  final String? id;
  final String? title;

  const SelectModel({
    this.iconPath,
    this.id,
    this.title,
  });

  @override
  List<Object?> get props => [
        iconPath,
        id,
        title,
      ];
}

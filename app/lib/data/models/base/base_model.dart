import 'package:app/domain/entities/base_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'base_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BaseModel extends BaseEntity {
  const BaseModel({
    String? message,
    int? stausCode,
    bool? isSuccess,
    Map<String, dynamic>? error,
  }) : super(
          message: message,
          stausCode: stausCode,
          isSuccess: isSuccess,
          error: error,
        );

  factory BaseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$BaseModelToJson(this);

  BaseEntity toEntity() => BaseEntity(
        message: message,
        stausCode: stausCode,
        isSuccess: isSuccess,
        error: error,
      );
}

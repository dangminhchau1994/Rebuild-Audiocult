import 'dart:convert';

import 'package:app/data/models/base/base_model.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/json_reader.dart';

void main() {
  const tBaseModel = BaseModel(
    message: "failed",
    stausCode: 200,
    isSuccess: false,
    error: {
      "message": "failed",
    },
  );

  test('should be a subclass of base entity', () {
    expect(tBaseModel, isA<BaseEntity>());
  });

  test('should return a valid base model', () {
    // arrange
    final jsonMap = jsonDecode(readJson('dummy_base_response.json'));
    // act
    final result = BaseModel.fromJson(jsonMap);
    // assert
    expect(result, isA<BaseModel>());
  });
}

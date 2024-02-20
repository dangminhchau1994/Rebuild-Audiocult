import 'dart:convert';
import 'package:app/data/models/logout/logout_model.dart';
import 'package:app/domain/entities/logout_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../helpers/json_reader.dart';

void main() {
  group('logoutModel', () {
    const tLogoutModel = LogoutModel();

    test('should be a subclass of logout entity', () {
      expect(tLogoutModel, isA<LogoutEntity>());
    });

    test('should return valid logout model', () {
      // arrange
      final jsonMap = jsonDecode(readJson('dummy_logout_response.json'));

      // act
      final result = LogoutModel.fromJson(jsonMap);

      // assert
      expect(result, tLogoutModel);
    });
  });
}

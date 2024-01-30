import 'dart:convert';
import 'package:app/data/models/login/login_model.dart';
import 'package:app/domain/entities/login_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../helpers/json_reader.dart';

void main() {
  group('login model test', () {
    const tLoginModel = LoginModel(
      accessToken: '357b3979817e4289f19a79b140914ff11dccc2c5',
      expiresIn: 86400000,
      tokenType: 'Bearer',
      scope: null,
      refreshToken: 'd0e8ec882bb6327bdcadc78f367b894e87df4b2c',
      userId: '3778',
    );

    test(
      'should be a subclass of entity',
      () {
        // Arrange

        // Assert
        expect(tLoginModel, isA<LoginEntity>());
      },
    );

    test('should return valid model from json', () {
      // Arrange
      final Map<String, dynamic> jsonMap =
          jsonDecode(readJson('dummy_login_response.json'));

      // Act
      final result = LoginModel.fromJson(jsonMap);

      // Assert
      expect(result, tLoginModel);
    });
  });
}

import 'dart:convert';
import 'package:app/data/models/roles/roles_model.dart';
import 'package:app/domain/entities/roles_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../helpers/json_reader.dart';

void main() {
  group('roles model test', () {
    const tRolesModel = RolesModel(
      data: [
        RoleModel(
          userGroupId: '6',
          title: 'Event Organizer',
        ),
        RoleModel(
          userGroupId: '7',
          title: 'Venue',
        ),
      ],
    );

    test(
      'should be subclass of role entity',
      () => {
        expect(
          tRolesModel,
          isA<RolesEntity>(),
        ),
      },
    );

    test('should return valid model from json', () {
      // Arrange
      final Map<String, dynamic> jsonMap =
          jsonDecode(readJson('dummy_roles_response.json'));
      //Act
      final result = RolesModel.fromJson(jsonMap);
      //Assert
      expect(result, tRolesModel);
    });
  });
}

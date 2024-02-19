import 'dart:convert';

import 'package:app/data/models/profile/profile_model.dart';
import 'package:app/domain/entities/profile_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/json_reader.dart';

void main() {
  group('profileModel', () {
    const tProfileModel = ProfileModel(
      status: "success",
      message: "",
      error: null,
      data: ProfileModelData(
        userId: "3778",
        title: "Entertainer",
        userName: "dangminhchau",
        fullName: "dangminhchau",
        gender: null,
        userImage: null,
      ),
    );

    test('is a subclass of profile entity', () {
      expect(tProfileModel, isA<ProfileEntity>());
    });

    test('valid json response', () {
      //arrange
      final jsonData = jsonDecode(readJson('dummy_profile_response.json'));

      //act
      final result = ProfileModel.fromJson(jsonData);

      //assert
      expect(result, tProfileModel);
    });
  });
}

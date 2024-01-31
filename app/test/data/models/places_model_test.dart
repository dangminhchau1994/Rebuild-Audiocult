import 'dart:convert';
import 'package:app/data/models/places/places_model.dart';
import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../helpers/json_reader.dart';

void main() {
  test('should be a subclass of places entity', () {
    const tPlacesModel = PlacesModel(
      placeId:
          'ElhIbyBDaGkgTWluaCBTYXJhbmkgUm9hZCwgS2Fua2FyaWEgRXN0YXRlcywgUGFyayBTdHJlZXQgYXJlYSwgS29sa2F0YSwgV2VzdCBCZW5nYWwsIEluZGlhIi4qLAoUChIJ-Xr1ahF3AjoRPYSQx_SUpVkSFAoSCUn2XN0QdwI6EWpVu6SzUbbo',
      description:
          'Ho Chi Minh Sarani Road, Kankaria Estates, Park Street area, Kolkata, West Bengal, India',
    );

    expect(tPlacesModel, isA<PlaceSuggestionEntity>());
  });

  test('should return valid model from json', () {
    final Map<String, dynamic> jsonMap =
        jsonDecode(readJson('dummy_places_response.json'));

    final result = PlacesModel.fromJson(jsonMap);

    expect(result, isA<PlacesModel>());
  });
}

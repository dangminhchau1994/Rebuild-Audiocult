import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/places/places_model.dart';
import 'package:app/domain/usecases/get_place_detail_usecase.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class PlacesDataSource {
  Future<List<PlacesModel>> getPlaces(GetPlacesParams params);

  Future<PlacesModel> getPlaceDetail(GetPlaceDetailParams params);

  @factoryMethod
  static PlacesDataSource create(Dio client) =>
      PlaceDataSourceImpl(client: client);
}

class PlaceDataSourceImpl implements PlacesDataSource {
  @injectable
  final Dio client;

  PlaceDataSourceImpl({required this.client});

  @override
  Future<List<PlacesModel>> getPlaces(GetPlacesParams params) async {
    client.options.baseUrl = ApiEndpoints.placeUrl;
    try {
      final response = await client.get(
        ApiEndpoints.getPlaces,
        queryParameters: params.toJson(),
      );
      return (response.data['predictions'] as List<dynamic>)
          .map((e) => PlacesModel.fromJson(e))
          .toList();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<PlacesModel> getPlaceDetail(GetPlaceDetailParams params) async {
    client.options.baseUrl = ApiEndpoints.placeUrl;
    try {
      final response = await client.get(
        ApiEndpoints.getPlaceDetail,
        queryParameters: params.toJson(),
      );
      final place = PlacesModel();
      for (var element
          in (response.data['result']['address_components'] as List)) {
        final type = element['types'] as List;
        if (type.contains('administrative_area_level_1')) {
          place.city = element['long_name'] as String;
        }
        if (type.contains('country')) {
          place.zipCode = element['short_name'] as String;
        }
      }
      return place;
    } catch (e) {
      throw ServerException();
    }
  }
}

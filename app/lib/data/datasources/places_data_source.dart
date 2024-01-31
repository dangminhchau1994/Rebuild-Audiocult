import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/places/places_model.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class PlacesDataSource {
  Future<List<PlacesModel>> getPlaces(GetPlacesParams params);

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
    final response = await client.get(
      ApiEndpoints.getPlaces,
      queryParameters: params.toJson(),
    );

    if (response.statusCode == 200) {
      return (response.data['predictions'] as List<dynamic>)
          .map((e) => PlacesModel.fromJson(e))
          .toList();
    } else {
      throw ServerException();
    }
  }
}

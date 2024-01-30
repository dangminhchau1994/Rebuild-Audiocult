import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/roles/roles_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class RolesDataSource {
  Future<RolesModel> getRoles(String token);

  @factoryMethod
  static RolesDataSourceImpl create(Dio client) =>
      RolesDataSourceImpl(client: client);
}

class RolesDataSourceImpl implements RolesDataSource {
  @injectable
  final Dio client;

  RolesDataSourceImpl({required this.client});

  @override
  Future<RolesModel> getRoles(String token) async {
    final response = await client.get(
      ApiEndpoints.getRoles,
      options: Options(
        headers: {'Authorization': 'Bearer $token'},
      ),
    );

    if (response.statusCode == 200) {
      return RolesModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}

import 'dart:convert';
import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/roles/roles_model.dart';
import 'package:dio/dio.dart';

abstract class RolesDataSource {
  Future<RolesModel> getRoles();
}

class RolesDataSourceImpl implements RolesDataSource {
  final Dio client;

  RolesDataSourceImpl({required this.client});

  @override
  Future<RolesModel> getRoles() async {
    final response = await client.get(ApiEndpoints.getRoles);

    if (response.statusCode == 200) {
      return RolesModel.fromJson(jsonDecode(response.data));
    } else {
      throw ServerException();
    }
  }
}

import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/logout/logout_model.dart';
import 'package:app/domain/usecases/logout_usecase.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class LogoutDataSource {
  Future<LogoutModel> logout(LogoutParams params);

  @factoryMethod
  static LogoutDataSourceImpl create(Dio client) =>
      LogoutDataSourceImpl(client: client);
}

class LogoutDataSourceImpl implements LogoutDataSource {
  @injectable
  final Dio client;

  LogoutDataSourceImpl({required this.client});

  @override
  Future<LogoutModel> logout(LogoutParams params) async {
    client.options.baseUrl = ApiEndpoints.baseUrl;
    try {
      final response = await client.post(
        ApiEndpoints.logout,
        data: params.toJson(),
      );
      return LogoutModel.fromJson(response.data);
    } catch (e) {
      throw ServerException();
    }
  }
}

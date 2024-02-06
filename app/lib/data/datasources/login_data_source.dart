import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/login/login_model.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class LoginDataSource {
  Future<LoginModel> login(LoginParams params);

  @factoryMethod
  static LoginDataSourceImpl create(Dio client) =>
      LoginDataSourceImpl(client: client);
}

class LoginDataSourceImpl implements LoginDataSource {
  @injectable
  final Dio client;

  LoginDataSourceImpl({required this.client});

  @override
  Future<LoginModel> login(LoginParams params) async {
    client.options.baseUrl = ApiEndpoints.baseUrl;
    final response = await client.post(
      ApiEndpoints.authenticate,
      data: params.toJson(),
    );

    if (response.statusCode == 200) {
      return LoginModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}

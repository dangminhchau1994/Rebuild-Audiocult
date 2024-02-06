import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/register/register_model.dart';
import 'package:app/domain/usecases/register_usecase.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class RegisterDataSource {
  Future<RegisterModel> register(RegisterParams params);

  @factoryMethod
  static RegisterDataSourceImpl create(Dio client) =>
      RegisterDataSourceImpl(client: client);
}

class RegisterDataSourceImpl implements RegisterDataSource {
  @injectable
  final Dio client;

  RegisterDataSourceImpl({required this.client});

  @override
  Future<RegisterModel> register(RegisterParams params) async {
    client.options.baseUrl = ApiEndpoints.baseUrl;

    final response = await client.post(
      ApiEndpoints.register,
      data: FormData.fromMap(params.toJson()),
      options: Options(
        headers: {'Authorization': 'Bearer ${params.accessToken}'},
      ),
    );
    if (response.data['status'] == AppConstants.successStatus) {
      return RegisterModel.fromJson(response.data);
    } else {
      throw ServerException(message: response.data['error']['message']);
    }
  }
}

import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/base/base_model.dart';
import 'package:app/domain/usecases/resend_password_usecase.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class ResendPasswordDataSource {
  Future<BaseModel> resendPassword(ResendPasswordParams params);

  @factoryMethod
  static ResendPasswordDataSourceImpl create(Dio client) =>
      ResendPasswordDataSourceImpl(client: client);
}

class ResendPasswordDataSourceImpl implements ResendPasswordDataSource {
  @injectable
  final Dio client;

  ResendPasswordDataSourceImpl({required this.client});

  @override
  Future<BaseModel> resendPassword(ResendPasswordParams params) async {
    client.options.baseUrl = ApiEndpoints.baseUrl;
    try {
      final response = await client.post(
        ApiEndpoints.resendPassword,
        data: FormData.fromMap(params.toJson()),
        options: Options(headers: {'Authorization': 'Bearer ${params.token}'}),
      );
      return BaseModel.fromJson(response.data);
    } catch (e) {
      throw ServerException();
    }
  }
}

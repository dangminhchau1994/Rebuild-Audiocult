import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/base/base_model.dart';
import 'package:app/domain/usecases/resend_code_usecase.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class ResendCodeDataSource {
  Future<BaseModel> resendCode(ResendCodeParams params);

  @factoryMethod
  static ResendCodeDataSourceImpl create(Dio client) =>
      ResendCodeDataSourceImpl(client: client);
}

class ResendCodeDataSourceImpl implements ResendCodeDataSource {
  @injectable
  final Dio client;

  ResendCodeDataSourceImpl({required this.client});

  @override
  Future<BaseModel> resendCode(ResendCodeParams params) async {
    client.options.baseUrl = ApiEndpoints.baseUrl;
    final response = await client.post(
      ApiEndpoints.resendCode,
      data: FormData.fromMap(params.toJson()),
      options: Options(headers: {'Authorization': 'Bearer ${params.token}'}),
    );

    if (response.data['status'] == AppConstants.successStatus) {
      return BaseModel.fromJson(response.data);
    } else {
      throw ServerException(message: response.data['error']['message']);
    }
  }
}

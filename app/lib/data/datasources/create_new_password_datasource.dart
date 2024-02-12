import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/base/base_model.dart';
import 'package:app/domain/usecases/create_new_password_usecase.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class CreateNewPasswordDataSource {
  Future<BaseModel> createNewPassword(CreateNewPasswordParams params);

  @factoryMethod
  static CreateNewPasswordDataSourceImpl create(Dio client) =>
      CreateNewPasswordDataSourceImpl(client: client);
}

class CreateNewPasswordDataSourceImpl implements CreateNewPasswordDataSource {
  @injectable
  final Dio client;

  CreateNewPasswordDataSourceImpl({required this.client});

  @override
  Future<BaseModel> createNewPassword(CreateNewPasswordParams params) async {
    final response = await client.post(
      ApiEndpoints.createNewPassword,
      data: FormData.fromMap(params.toJson()),
      options: Options(
        headers: {'Authorization': 'Bearer ${params.accessToken}'},
      ),
    );

    if (response.data['status'] == AppConstants.successStatus) {
      return BaseModel.fromJson(response.data);
    } else {
      throw ServerException(message: response.data['error']['message']);
    }
  }
}

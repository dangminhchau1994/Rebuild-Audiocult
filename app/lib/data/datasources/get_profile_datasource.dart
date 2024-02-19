import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/data/models/profile/profile_model.dart';
import 'package:app/domain/usecases/get_profile_usecase.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class GetProfileDataSource {
  Future<ProfileModel> getProfile(GetProfileParams params);

  @factoryMethod
  static GetProfileDataSource create(Dio client) =>
      GetProfileDataSourceImpl(client: client);
}

class GetProfileDataSourceImpl implements GetProfileDataSource {
  @injectable
  final Dio client;

  GetProfileDataSourceImpl({required this.client});

  @override
  Future<ProfileModel> getProfile(GetProfileParams params) async {
    client.options.baseUrl = ApiEndpoints.baseUrl;
    final response = await client.get(
      '${ApiEndpoints.register}/${params.userId}',
      queryParameters: params.toJson(),
    );

    if (response.data['status'] == AppConstants.successStatus) {
      return ProfileModel.fromJson(response.data);
    } else {
      throw ServerException(message: response.data['error']['message']);
    }
  }
}

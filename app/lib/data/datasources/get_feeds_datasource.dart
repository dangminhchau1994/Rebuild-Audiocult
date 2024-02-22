import 'package:app/core/constants/api_endpoints.dart';
import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/extension/app_extension.dart';
import 'package:app/data/models/feed/feed_model.dart';
import 'package:app/domain/usecases/get_feeds_usecase.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class GetFeedDataSource {
  Future<FeedModel> getFeeds(GetFeedParams params);

  @factoryMethod
  static GetFeedDataSourceImpl create(Dio client) =>
      GetFeedDataSourceImpl(client: client);
}

class GetFeedDataSourceImpl implements GetFeedDataSource {
  @injectable
  final Dio client;

  GetFeedDataSourceImpl({required this.client});

  @override
  Future<FeedModel> getFeeds(GetFeedParams params) async {
    client.options.baseUrl = ApiEndpoints.baseUrl;

    try {
      final response = await client.get(
        ApiEndpoints.getFeeds,
        data: FormData.fromMap(
          params.toJson(),
        ),
      );

      if (response.data['status'] == AppConstants.successStatus) {
        return FeedModel.fromJson(response.data);
      } else {
        throw ServerException(message: response.data['message']);
      }
    } on DioException catch (error) {
      throw error.type.handleDioError();
    }
  }
}

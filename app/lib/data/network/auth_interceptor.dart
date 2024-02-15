import 'package:app/core/constants/app_pref_key.dart';
import 'package:app/core/utils/share_preferences_util.dart';
import 'package:app/di/inject_container.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends QueuedInterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (getIt<SharePreferencesUtil>().getString(AppPrefKey.token).isNotEmpty) {
      options.headers['Authorization'] =
          'Bearer ${getIt<SharePreferencesUtil>().getString(AppPrefKey.token)}';
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}

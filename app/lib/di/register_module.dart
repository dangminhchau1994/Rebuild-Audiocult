import 'dart:io';
import 'package:app/core/constants/api_endpoints.dart';
import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() => Dio(
        BaseOptions(
          baseUrl: ApiEndpoints.baseUrl,
          connectTimeout: const Duration(milliseconds: 1000),
          receiveTimeout: const Duration(milliseconds: 1000),
          headers: {
            HttpHeaders.contentTypeHeader: "application/json",
            HttpHeaders.acceptHeader: "application/json",
          },
        ),
      )..interceptors.add(
          AwesomeDioInterceptor(
            logRequestTimeout: false,
            logRequestHeaders: false,
            logResponseHeaders: false,
          ),
        );
}
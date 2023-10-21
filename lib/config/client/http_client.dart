import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:punk_api_flutter/utils/app_logger.dart';

class HttpClient {

  final PrettyDioLogger prettyDioLogger = AppLogger.appLogger;
  final Dio dio = Dio();


  Dio getClient() {
    final Dio client = dio
      ..interceptors.add(prettyDioLogger);

    return client;
  }

}
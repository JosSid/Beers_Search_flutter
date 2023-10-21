import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AppLogger {

  static PrettyDioLogger appLogger = PrettyDioLogger(
      request: false,
      requestHeader: false,
      requestBody: false,
      responseBody: false,
      responseHeader: false,
      compact: false,
    );
}
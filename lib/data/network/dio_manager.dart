import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// A utility class for creating and setting up [Dio]
abstract class DioManager {
  // Constructor
  DioManager._();

  // Properties
  static Dio? _dio;

  // Functions

  /// Creates a new dio client with provided [interceptors]
  /// or returns already existing instance of it
  static Dio getDio(List<Interceptor> interceptors) {
    if (_dio == null) {
      _dio = Dio();
      interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
        handler.next(request);
      }));
      _dio?.interceptors.addAll(interceptors);
    }
    return _dio!;
  }

  /// Predefined logger
  static get logger => PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
      );
}

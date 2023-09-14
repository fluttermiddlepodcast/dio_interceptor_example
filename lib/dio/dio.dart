import 'package:dio/dio.dart';
import 'package:dio_interceptor_example/dio/logger_interceptor.dart';

final dio = Dio(BaseOptions())..interceptors.add(LoggerInterceptor());

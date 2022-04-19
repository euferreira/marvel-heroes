import 'package:dio/dio.dart';
import 'package:marvel_heroes/app/shared/errors/errors.dart';

abstract class NetworkExceptions {
  Failure exceptions(ExceptionParams params);
}

class ExceptionParams {
  final DioError? error;

  ExceptionParams(this.error);
}
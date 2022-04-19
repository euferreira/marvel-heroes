import 'package:marvel_heroes/app/shared/errors/errors.dart';
import 'package:marvel_heroes/app/shared/errors/network.exceptions.dart';

class DioExceptions implements NetworkExceptions {
  @override
  Failure exceptions(ExceptionParams params) {
    switch (params.error!.type) {
      default:
        return Failure(params.error!.response!.statusCode.toString());
    }
  }
}
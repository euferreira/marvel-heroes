import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:marvel_heroes/app/shared/dio/api.client.dio.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ApiClientDio(Dio()), permanent: true);
  }
}
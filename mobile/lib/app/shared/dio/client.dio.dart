import 'package:dio/dio.dart';

abstract class ClientDio {
  final Dio client;

  ClientDio(this.client);
}
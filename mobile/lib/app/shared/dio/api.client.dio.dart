import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:marvel_heroes/app/shared/dio/client.dio.dart';

class ApiClientDio extends ClientDio {
  Dio client;
  String baseUrl = dotenv.env['API_URL']!;

  ApiClientDio(this.client) : super(client) {
    client = Dio();
    client.options.baseUrl = baseUrl;
    client.options.connectTimeout = 5000;
    client.options.queryParameters = {
      'ts': 10,
      'apikey': dotenv.env['PUBLIC_KEY'],
      'hash': md5.convert(utf8.encode("10") + utf8.encode(dotenv.env['PRIVATE_KEY']!) + utf8.encode(dotenv.env['PUBLIC_KEY']!)).toString().toLowerCase()
    };
  }
}
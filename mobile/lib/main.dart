import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:marvel_heroes/app/core/app.widget.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const MarvelHeroesApp());
}
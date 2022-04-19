import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_heroes/app/core/app.binding.dart';
import 'package:marvel_heroes/app/core/app.module.dart';
import 'package:marvel_heroes/app/shared/theme/app.theme.dart';

class MarvelHeroesApp extends StatelessWidget {
  const MarvelHeroesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Marvel Heroes',
      initialBinding: AppBinding(),
      getPages: AppModule().routes,
      enableLog: true,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}

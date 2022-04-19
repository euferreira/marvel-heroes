import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:marvel_heroes/app/core/app.module.dart';
import 'package:marvel_heroes/app/module/home/application/pages/details.page.dart';

import 'application/home.binding.dart';
import 'application/pages/home.page.dart';

class HomeModule implements Module {
  @override
  List<GetPage> routes = [
    GetPage(
        name: '/',
        page: () => const HomePage(),
        binding: HomeBinding(),
        children: [
          GetPage(
            name: '/details',
            page: () => const DetailsPage(),
          )
        ]),
  ];
}

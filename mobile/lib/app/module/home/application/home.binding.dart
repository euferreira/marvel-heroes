import 'package:get/get.dart';
import 'package:marvel_heroes/app/module/home/application/controller/details.controller.dart';
import 'package:marvel_heroes/app/module/home/domain/usecase/home.usecase.dart';
import 'package:marvel_heroes/app/module/home/infra/datasource/home.datasource.dart';

import '../infra/repository/home.repository.dart';
import 'controller/home.controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    final homeDatasource = HomeDataSource();
    final homeRepository = HomeRepository(homeDatasource);
    final homeUsecase = HomeUseCase(homeRepository);

    Get.lazyPut<HomeController>(() => HomeController(useCase: homeUsecase));
    Get.lazyPut<DetailsController>(() => DetailsController(), fenix: true);
  }
}
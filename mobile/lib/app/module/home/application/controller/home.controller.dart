import 'package:get/get.dart';
import 'package:marvel_heroes/app/module/home/domain/ihome.usecase.dart';
import 'package:marvel_heroes/app/module/home/infra/model/aliens.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/anti.heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/humans.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/villains.model.dart';

class HomeController extends GetxController {
  final IHomeUseCase useCase;

  RxBool showProgress = true.obs;
  RxList<HeroesModel> heroesList = <HeroesModel>[].obs;
  RxList<VillainsModel> villainsList = <VillainsModel>[].obs;
  RxList<AntiHeroesModel> antiHeroesList = <AntiHeroesModel>[].obs;
  RxList<AliensModel> aliensList = <AliensModel>[].obs;
  RxList<HumansModel> humansList = <HumansModel>[].obs;

  HomeController({required this.useCase});

  @override
  void onInit() async {
    super.onInit();
    await loadData();
    showProgress.value = false;
  }

  Future<void> loadData() async {
    final heroesResult = await useCase.getHeroes();
    final villainsResult = await useCase.getVillains();
    final antiHeroes = await useCase.getAntiHeroes();
    final aliensResult = await useCase.getAliens();
    final humansResult = await useCase.getHumans();

    heroesResult.fold((l) => null, (r) => heroesList.value = r);
    villainsResult.fold((l) => null, (r) => villainsList.value = r);
    antiHeroes.fold((l) => null, (r) => antiHeroesList.value = r);
    aliensResult.fold((l) => null, (r) => aliensList.value = r);
    humansResult.fold((l) => null, (r) => humansList.value = r);
  }
}

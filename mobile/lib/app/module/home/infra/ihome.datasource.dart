import 'package:marvel_heroes/app/module/home/domain/entity/dados.entity.dart';
import 'package:marvel_heroes/app/module/home/infra/model/aliens.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/anti.heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/humans.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/villains.model.dart';

abstract class IHomeDataSource {
  Future<List<HeroesModel>> getHeroesList();
  Future<List<VillainsModel>> getVillainsList();
  Future<List<AntiHeroesModel>> getAntiHeroesList();
  Future<List<AliensModel>> getAliensList();
  Future<List<HumansModel>> getHumansList();
}
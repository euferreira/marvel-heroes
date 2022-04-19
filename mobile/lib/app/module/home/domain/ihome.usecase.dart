import 'package:dartz/dartz.dart';
import 'package:marvel_heroes/app/module/home/infra/model/aliens.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/anti.heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/humans.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/villains.model.dart';
import 'package:marvel_heroes/app/shared/errors/errors.dart';

abstract class IHomeUseCase {
  Future<Either<Failure, List<HeroesModel>>> getHeroes();
  Future<Either<Failure, List<VillainsModel>>> getVillains();
  Future<Either<Failure, List<AntiHeroesModel>>> getAntiHeroes();
  Future<Either<Failure, List<AliensModel>>> getAliens();
  Future<Either<Failure, List<HumansModel>>> getHumans();
}
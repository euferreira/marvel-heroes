import 'package:dartz/dartz.dart';
import 'package:marvel_heroes/app/shared/errors/errors.dart';

import '../infra/model/aliens.model.dart';
import '../infra/model/anti.heroes.model.dart';
import '../infra/model/heroes.model.dart';
import '../infra/model/humans.model.dart';
import '../infra/model/villains.model.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<HeroesModel>>> getHeroes();
  Future<Either<Failure, List<VillainsModel>>> getVillains();
  Future<Either<Failure, List<AntiHeroesModel>>> getAntiHeroes();
  Future<Either<Failure, List<AliensModel>>> getAliens();
  Future<Either<Failure, List<HumansModel>>> getHumans();
}
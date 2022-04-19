import 'package:dartz/dartz.dart';
import 'package:marvel_heroes/app/module/home/domain/ihome.repository.dart';
import 'package:marvel_heroes/app/module/home/domain/ihome.usecase.dart';
import 'package:marvel_heroes/app/module/home/infra/model/aliens.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/anti.heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/humans.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/villains.model.dart';
import 'package:marvel_heroes/app/shared/errors/errors.dart';

class HomeUseCase implements IHomeUseCase {
  final IHomeRepository repository;

  HomeUseCase(this.repository);

  @override
  Future<Either<Failure, List<AliensModel>>> getAliens() async => await repository.getAliens();

  @override
  Future<Either<Failure, List<AntiHeroesModel>>> getAntiHeroes() async => await repository.getAntiHeroes();

  @override
  Future<Either<Failure, List<HeroesModel>>> getHeroes() async => await repository.getHeroes();

  @override
  Future<Either<Failure, List<HumansModel>>> getHumans() async => await repository.getHumans();

  @override
  Future<Either<Failure, List<VillainsModel>>> getVillains() async => await repository.getVillains();
}
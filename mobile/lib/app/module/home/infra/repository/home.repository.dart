import 'package:dartz/dartz.dart';
import 'package:marvel_heroes/app/module/home/domain/ihome.repository.dart';
import 'package:marvel_heroes/app/module/home/infra/ihome.datasource.dart';
import 'package:marvel_heroes/app/module/home/infra/model/aliens.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/anti.heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/humans.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/villains.model.dart';
import 'package:marvel_heroes/app/shared/errors/errors.dart';

class HomeRepository implements IHomeRepository {
  final IHomeDataSource dataSource;

  HomeRepository(this.dataSource);

  @override
  Future<Either<Failure, List<AliensModel>>> getAliens() async {
    try {
      final result = await dataSource.getAliensList();
      return Right(result);
    }
    on Failure catch (e) {
      return Left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<AntiHeroesModel>>> getAntiHeroes() async {
    try {
      final result = await dataSource.getAntiHeroesList();
      return Right(result);
    }
    on Failure catch (e) {
      return Left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<HeroesModel>>> getHeroes() async {
    try {
      final result = await dataSource.getHeroesList();
      return Right(result);
    }
    on Failure catch (e) {
      return Left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<HumansModel>>> getHumans() async {
    try {
      final result = await dataSource.getHumansList();
      return Right(result);
    }
    on Failure catch (e) {
      return Left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<VillainsModel>>> getVillains() async {
    try {
      final result = await dataSource.getVillainsList();
      return Right(result);
    }
    on Failure catch (e) {
      return Left(Failure(e.message));
    }
  }
}
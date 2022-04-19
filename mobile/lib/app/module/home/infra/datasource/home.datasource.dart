import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:marvel_heroes/app/module/home/infra/ihome.datasource.dart';
import 'package:marvel_heroes/app/module/home/infra/model/aliens.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/anti.heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/heroes.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/humans.model.dart';
import 'package:marvel_heroes/app/module/home/infra/model/villains.model.dart';
import 'package:marvel_heroes/app/shared/errors/errors.dart';

class HomeDataSource implements IHomeDataSource {
  @override
  Future<List<AliensModel>> getAliensList() async {
    try {
      final source = await rootBundle.loadString('assets/application.json');
      final map = json.decode(source);
      List<AliensModel> aliens = [];
      map['aliens'].forEach((item) {
        aliens.add(AliensModel.fromJson(item));
      });
      return aliens;
    }
    catch (e) {
      throw Failure(e.toString());
    }
  }

  @override
  Future<List<AntiHeroesModel>> getAntiHeroesList() async {
    try {
      final source = await rootBundle.loadString('assets/application.json');
      final map = json.decode(source);
      List<AntiHeroesModel> antiHeroes = [];
      map['antiHeroes'].forEach((item) {
        antiHeroes.add(AntiHeroesModel.fromJson(item));
      });
      return antiHeroes;
    }
    catch (e) {
      throw Failure(e.toString());
    }
  }

  @override
  Future<List<HeroesModel>> getHeroesList() async {
    try {
      final source = await rootBundle.loadString('assets/application.json');
      final map = json.decode(source);
      List<HeroesModel> heroes = [];
      map['heroes'].forEach((item) {
        heroes.add(HeroesModel.fromJson(item));
      });
      return heroes;
    }
    catch (e) {
      throw Failure(e.toString());
    }
  }

  @override
  Future<List<HumansModel>> getHumansList() async {
    try {
      final source = await rootBundle.loadString('assets/application.json');
      final map = json.decode(source);
      List<HumansModel> humans = [];
      map['humans'].forEach((item) {
        humans.add(HumansModel.fromJson(item));
      });
      return humans;
    }
    catch (e) {
      throw Failure(e.toString());
    }
  }

  @override
  Future<List<VillainsModel>> getVillainsList() async {
    try {
      final source = await rootBundle.loadString('assets/application.json');
      final map = json.decode(source);
      List<VillainsModel> villains = [];
      map['villains'].forEach((item) {
        villains.add(VillainsModel.fromJson(item));
      });
      return villains;
    }
    catch (e) {
      throw Failure(e.toString());
    }
  }
}
import 'package:marvel_heroes/app/module/home/domain/entity/dados.entity.dart';

class CaracteristicsModel extends CaracteristicsEntity {
  CaracteristicsModel(
      {required String birth,
      required String universe,
      required HeightEntity height,
      required WeightEntity weight})
      : super(birth: birth, universe: universe, weight: weight, height: height);

  factory CaracteristicsModel.fromJson(Map<String, dynamic> json) =>
      CaracteristicsModel(
        birth: json['birth'],
        universe: json['universe'],
        height: HeightModel.fromJson(json['height']),
        weight: WeightModel.fromJson(json['weight']),
      );
}

class WeightModel extends WeightEntity {
  WeightModel({required num value, required String unit})
      : super(value: value, unit: unit);

  factory WeightModel.fromJson(Map<String, dynamic> json) => WeightModel(
        value: json['value'],
        unit: json['unity'],
      );
}

class HeightModel extends HeightEntity {
  HeightModel({required num value, required String unit})
      : super(value: value, unit: unit);

  factory HeightModel.fromJson(Map<String, dynamic> json) => HeightModel(
    value: json['value'],
    unit: json['unity'],
  );
}

class AbilitiesModel extends AbilitiesEntity {
  AbilitiesModel(
      {required int force,
      required int intelligence,
      required int agility,
      required int endurance,
      required int velocity})
      : super(
            force: force,
            intelligence: intelligence,
            agility: agility,
            endurance: endurance,
            velocity: velocity);

  factory AbilitiesModel.fromJson(Map<String, dynamic> json) => AbilitiesModel(
        force: json['force'],
        intelligence: json['intelligence'],
        agility: json['agility'],
        endurance: json['endurance'],
        velocity: json['velocity'],
      );
}

class MoviesModel extends MoviesEntity {
  MoviesModel({required String path}) : super(path: path);

  factory MoviesModel.fromJson(String path) => MoviesModel(
        path: path,
      );
}

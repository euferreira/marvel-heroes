import 'package:marvel_heroes/app/module/home/domain/entity/dados.entity.dart';

import 'dados.model.dart';

class AliensModel extends Dados {
  AliensModel(
      {required String name,
      required String alterEgo,
      required String imagePath,
      required String biography,
      required CaracteristicsEntity caracteristics,
      required AbilitiesEntity abilities,
      required List<MoviesEntity> movies})
      : super(
            name: name,
            alterEgo: alterEgo,
            imagePath: imagePath,
            biography: biography,
            caracteristics: caracteristics,
            abilities: abilities,
            movies: movies);

  factory AliensModel.fromJson(Map<String, dynamic> json) => AliensModel(
    name: json['name'],
    alterEgo: json['alterEgo'],
    imagePath: json['imagePath'],
    biography: json['biography'],
    caracteristics: CaracteristicsModel.fromJson(json['caracteristics']),
    abilities: AbilitiesModel.fromJson(json['abilities']),
    movies: List<MoviesModel>.from(json["movies"].map((x) => MoviesModel.fromJson(x))),
  );
}

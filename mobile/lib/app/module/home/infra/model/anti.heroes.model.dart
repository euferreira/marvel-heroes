import 'package:marvel_heroes/app/module/home/domain/entity/dados.entity.dart';
import 'package:marvel_heroes/app/module/home/infra/model/dados.model.dart';

class AntiHeroesModel extends Dados {
  AntiHeroesModel(
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

  factory AntiHeroesModel.fromJson(Map<String, dynamic> json) =>
      AntiHeroesModel(
        name: json['name'],
        alterEgo: json['alterEgo'],
        imagePath: json['imagePath'],
        biography: json['biography'],
        caracteristics: CaracteristicsModel.fromJson(json['caracteristics']),
        abilities: AbilitiesModel.fromJson(json['abilities']),
        movies: (json['movies'] as List)
            .map((e) => MoviesModel.fromJson(e))
            .toList(),
      );
}

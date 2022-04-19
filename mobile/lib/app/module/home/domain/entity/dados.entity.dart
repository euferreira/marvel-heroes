abstract class Dados {
  final String name;
  final String alterEgo;
  final String imagePath;
  final String biography;
  final CaracteristicsEntity caracteristics;
  final AbilitiesEntity abilities;
  final List<MoviesEntity> movies;

  Dados({
    required this.name,
    required this.alterEgo,
    required this.imagePath,
    required this.biography,
    required this.caracteristics,
    required this.abilities,
    required this.movies,
  });
}

class CaracteristicsEntity {
  final String birth;
  final String universe;
  final WeightEntity weight;
  final HeightEntity height;

  CaracteristicsEntity({required this.birth, required this.universe, required this.weight, required this.height});
}

class WeightEntity {
  final num value;
  final String unit;

  WeightEntity({required this.value, required this.unit});
}

class HeightEntity {
  final num value;
  final String unit;

  HeightEntity({required this.value, required this.unit});
}

class AbilitiesEntity {
  final int force;
  final int intelligence;
  final int agility;
  final int endurance;
  final int velocity;

  AbilitiesEntity({required this.force, required this.intelligence, required this.agility, required this.endurance, required this.velocity});
}

class MoviesEntity {
  final String path;

  MoviesEntity({required this.path});
}
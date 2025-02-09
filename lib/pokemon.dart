import 'dart:ui';

class Pokemon {
  final String name;
  final String image;
  final String type;
  final String number;
  final String weight;
  final String height;
  final List<String> abilities;
  final String description;
  final Map<String, int> baseStats;
  final Color color;

  Pokemon({
    required this.name,
    required this.image,
    required this.type,
    required this.number,
    required this.weight,
    required this.height,
    required this.abilities,
    required this.description,
    required this.baseStats,
    required this.color,
  });
}

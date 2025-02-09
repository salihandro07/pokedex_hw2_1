import 'package:flutter/material.dart';
import 'package:pokedex_hw2_1/pokemon.dart';

class PokemonDetailScreen extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pokemon.color,
      body: SafeArea(
        child: Column(
          children: [
            // Верхний блок с изображением и именем
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 260,
                  decoration: BoxDecoration(
                    color: pokemon.color.withOpacity(0.9),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text("${pokemon.name} #${pokemon.number}", style: const TextStyle(
                           fontFamily: "Poppins",
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Image.asset(
                        pokemon.image,
                        width: 179,
                        height: 179,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),

            // Информация о покемоне
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Тип покемона
                        Center(
                          child: Chip(
                            label: Text(
                              pokemon.type,
                              style: const TextStyle(color: Colors.white),
                            ),
                            backgroundColor: pokemon.color,
                          ),
                        ),

                        const SizedBox(height: 16),

                        // "About" заголовок
                        const Text(
                          "About",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),

                        const SizedBox(height: 10),

                        // Вес, рост, атаки
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _infoColumn(Icons.fitness_center, pokemon.weight, "Weight"),
                            _infoColumn(Icons.height, pokemon.height, "Height"),
                            _infoColumn(Icons.bolt, pokemon.abilities.join("\n"), "Abilities"),
                          ],
                        ),

                        const SizedBox(height: 20),

                        // Описание
                        Text(
                          pokemon.description,
                          style: const TextStyle(fontSize: 16, color: Colors.grey),
                        ),

                        const SizedBox(height: 20),

                        // Base Stats
                        const Text(
                          "Base Stats",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),

                        const SizedBox(height: 10),

                        // Отображение характеристик
                        Column(
                          children: pokemon.baseStats.entries.map((entry) {
                            return _statRow(entry.key, entry.value, pokemon.color);
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Виджет для информации (вес, рост, атаки)
  Widget _infoColumn(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.grey.shade600),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }

  // Виджет для полоски характеристик
  Widget _statRow(String label, int value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(width: 60, child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold))),
          Expanded(
            child: LinearProgressIndicator(
              value: value / 100.0,
              backgroundColor: Colors.grey.shade300,
              color: color,
            ),
          ),
          const SizedBox(width: 10),
          Text(value.toString()),
        ],
      ),
    );
  }
}

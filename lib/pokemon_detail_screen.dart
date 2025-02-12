import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pokedex_hw2_1/pokemon.dart';
import 'package:pokedex_hw2_1/pokemon_list.dart';
import 'home_screen.dart';

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
                    onPressed: () => Navigator.push(context,
                      PageTransition(
                        duration: const Duration(milliseconds: 200),
                        type: PageTransitionType.fade,
                        child: const HomeScreen(),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 28,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 400),
                        type: PageTransitionType.leftToRight,
                        child: PokemonDetailScreen(
                          pokemon: pokemonList.elementAt(
                              pokemonList.indexOf(pokemon) == 0
                                  ? pokemonList.length - 1
                                  : pokemonList.indexOf(pokemon) - 1
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  right: 28,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 400),
                        type: PageTransitionType.rightToLeft,
                        child: PokemonDetailScreen(
                          pokemon: pokemonList.elementAt(
                              pokemonList.indexOf(pokemon) == pokemonList.length - 1
                                  ? 0
                                  : pokemonList.indexOf(pokemon) + 1
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Информация о покемоне
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Expanded(
                child: pokemonInformation(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container pokemonInformation() {
    return Container(
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
                _infoColumn(
                    Icons.bolt, pokemon.abilities.join("\n"), "Abilities"),
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(pokemon.color),
                  value: 0.8,// Цвет индикатора
                  backgroundColor: pokemon.color.withOpacity(0.2), // Цвет фона
                  minHeight: 10
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(value.toString()),
        ],
      ),
    );
  }
}
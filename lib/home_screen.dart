import 'package:flutter/material.dart';
import 'package:pokedex_hw2_1/pokemon_detail_screen.dart';
import 'package:pokedex_hw2_1/pokemon_list.dart';
import 'app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(
                      Icons.catching_pokemon,
                      size: 32,
                    ),
                    Text(
                      "Pokédex",
                      style: TextStyle(fontSize: 32,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ]),
                  Icon(
                    Icons.arrow_downward,
                    size: 32,
                    color: AppColors.darkGrey,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                buildPokemonCard(image: 'bulba', name: 'Bulbasaur', number: "#001", color: AppColors.bulba, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonDetailScreen(pokemon: pokemonList[1]), // Charmander
                    ),
                  );                }),
                buildPokemonCard(image: 'charmander', name: 'Charmander', number: "#004", color: AppColors.charmander, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonDetailScreen(pokemon: pokemonList[0]), // Charmander
                    ),
                  );                }),
                buildPokemonCard(image: 'squirtle', name: 'Squirtle', number: "#007", color: AppColors.squirtle, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonDetailScreen(pokemon: pokemonList[2]), // Charmander
                    ),
                  );                }),
              ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                buildPokemonCard(image: 'butterfree', name: 'Butterfree', number: "#012", color: AppColors.butterfree, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonDetailScreen(pokemon: pokemonList[3]), // Charmander
                    ),
                  );                }),
                buildPokemonCard(image: 'pikachu', name: 'Pikachu', number: "#025", color: AppColors.pikachu, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonDetailScreen(pokemon: pokemonList[4]), // Charmander
                    ),
                  );                }),
                buildPokemonCard(image: 'gastly', name: 'Goastly', number: "#092", color: AppColors.goastly, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonDetailScreen(pokemon: pokemonList[5]), // Charmander
                    ),
                  );                }),
              ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                buildPokemonCard(image: 'ditto', name: 'Ditto', number: "#132", color: AppColors.ditto, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonDetailScreen(pokemon: pokemonList[6]), // Charmander
                    ),
                  );                }),
                buildPokemonCard(image: 'mew', name: 'Mew', number: "#152", color: AppColors.mew, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonDetailScreen(pokemon: pokemonList[7]), // Charmander
                    ),
                  );                }),
                buildPokemonCard(image: 'aron', name: 'Aron', number: "#304", color: AppColors.aron, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonDetailScreen(pokemon: pokemonList[8]), // Charmander
                    ),
                  );                }),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}



Widget buildPokemonCard({String? image = "bulba", String? name, String? number, Color? color, Function()? onTap}) {
  return Padding(
    padding:  EdgeInsets.all(6.0),
    child: InkWell(
      onTap: onTap,
      child: Container(
        width: 104,
        height: 112,
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.all(Radius.circular(8)),
          border: Border.all(width: 1, color: color?? AppColors.bulba),
        ),
        child: Stack(
            children: [
          Align(
              alignment: Alignment(1, 1),
              child: Container(
                color: color ?? AppColors.bulba,
                height: 24,
                width: double.infinity,
                child: Text(
                  name?? "Bulbasaur",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily:'Poppins',),
                ),
              )),
          Center(
            child: Image.asset(
              'assets/image/$image.png',
              width: 72,
              height: 72,
            ),
          ),
          Positioned(
            right: 1,
            child: Text(
              number?? "#001",
              style: TextStyle(color: color?? AppColors.bulba, fontSize: 12),
            ),
          ),
        ]),
      ),
    ),
  );
}

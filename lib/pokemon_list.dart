import 'package:flutter/material.dart';
import 'package:pokedex_hw2_1/pokemon.dart';

import 'app_colors.dart';

final List<Pokemon> pokemonList = [
  Pokemon(
    name: "Charmander",
    image: 'assets/image/charmander.png',
    type: "Fire",
    number: "004",
    weight: "8.5 kg",
    height: "0.6 m",
    abilities: ["Mega-Punch", "Fire-Punch"],
    description:
        "A preference for hot things. When it rains, steam is said to spout from its tail.",
    baseStats: {"HP": 39, "ATK": 52, "DEF": 43, "SPD": 65},
    color: AppColors.charmander),
  Pokemon(
    name: "Bulbasaur",
    image: "assets/image/bulba.png",
    type: "Grass / Poison",
    number: "001",
    weight: "6.9 kg",
    height: "0.7 m",
    abilities: ["Overgrow", "Chlorophyll"],
    description:
        "There is a plant seed on its back right from the day this Pokémon is born.",
    baseStats: {"HP": 45, "ATK": 49, "DEF": 49, "SPD": 45},
    color: AppColors.bulba,
  ),
  Pokemon(
    name: "Squirtle",
    image: "assets/image/squirtle.png",
    type: "Water",
    number: "007",
    weight: "9.0 kg",
    height: "0.5 m",
    abilities: ["Torrent", "Rain Dish"],
    description:
        "When it retracts its long neck into its shell, it squirts out water with vigorous force.",
    baseStats: {"HP": 44, "ATK": 48, "DEF": 65, "SPD": 43},
    color: AppColors.squirtle,
  ),
  Pokemon(
    name: "Butterfree",
    image: 'assets/image/butterfree.png',
    type: "Bug, Flying",
    number: "012",
    weight: "32.0 kg",
    height: "1.1 m",
    abilities: ["Compound-Eyes", "Tinted-Lens"],
    description:
        "In battle, it flaps its wings at great speed to release highly toxic dust into the air.",
    baseStats: {
      "HP": 60,
      "ATK": 45,
      "DEF": 50,
      "SPD": 70
    },
    color: AppColors.butterfree,
  ),
  Pokemon(
    name: "Pikachu",
    image: 'assets/image/pikachu.png',
    type: "Electric",
    number: "025",
    weight: "6.0 kg",
    height: "0.4 m",
    abilities: ["Mega-Punch", "Pay-Day"],
    description:
        "Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.",
    baseStats: {
      "HP": 35,
      "ATK": 55,
      "DEF": 40,
      "SPD": 90
    },
    color: AppColors.pikachu,
  ),
  Pokemon(
    name: "Gastly",
    image: 'assets/image/gastly.png',
    type: "Ghost, Poison",
    number: "092",
    weight: "0.1 kg",
    height: "1.3 m",
    abilities: ["Levitate"],
    description:
        "Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.",
    baseStats: {
      "HP": 30,
      "ATK": 35,
      "DEF": 30,
      "SPD": 80
    },
    color: AppColors.goastly,
  ),
  Pokemon(
    name: "Ditto",
    image: 'assets/image/ditto.png',
    type: "Normal",
    number: "132",
    weight: "4.0 kg",
    height: "0.3 m",
    abilities: ["Limber", "Imposter"],
    description:
        "It can reconstitute its entire cellular structure to change into what it sees, but it returns to normal when it relaxes.",
    baseStats: {
      "HP": 48,
      "ATK": 48,
      "DEF": 48,
      "SPD": 48
    },
    color: AppColors.ditto,
  ),
  Pokemon(
    name: "Mew",
    image: 'assets/image/mew.png',
    type: "Psychic",
    number: "152",
    weight: "4.0 kg",
    height: "0.4 m",
    abilities: ["Synchronize"],
    description:
        "When viewed through a microscope, this Pokémon's short, fine, delicate hair can be seen.",
    baseStats: {
      "HP": 100,
      "ATK": 100,
      "DEF": 100,
      "SPD": 100
    },
    color: AppColors.mew,
  ),
  Pokemon(
    name: "Aron",
    image: 'assets/image/aron.png',
    type: "Steel, Rock",
    number: "304",
    weight: "60.0 kg",
    height: "0.4 m",
    abilities: ["Sturdy", "Rock-Head"],
    description:
        "It eats iron ore - and sometimes railroad tracks - to build up the steel armor that protects its body.",
    baseStats: {
      "HP": 50,
      "ATK": 70,
      "DEF": 100,
      "SPD": 30
    },
    color: AppColors.aron,
  ),
];

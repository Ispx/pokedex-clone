import 'package:flutter/material.dart';
import 'package:pokedex/modules/home/pages/home_page.dart';
import 'modules/home/repository/pokedex_repository.dart';

void main() {
  runApp(MyApp());
  //PokedexRepository.instance.get().then(
  //(pokedex) {
  //print(pokedex.pokemon.toString());
  //},
  // );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pokedex/core/constsapp.dart';
import 'package:pokedex/core/statusbar_height.dart';
import 'package:pokedex/modules/home/components/app_bar_home.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            top: -(350 / 7),
            right: -(350 / 4),
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                ConstsApp.pokeballDark,
                height: 300,
                width: 300,
              ),
            ),
          ),
          statusBarCustom(context, Colors.red[900]),
          AppBarHome()
        ],
      ),
    );
  }
}

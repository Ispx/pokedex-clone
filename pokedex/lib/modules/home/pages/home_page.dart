import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:pokedex/core/components/statusbar_height.dart';
import 'package:pokedex/core/consts/constsapp.dart';
import 'package:pokedex/core/models/pokedex_model.dart';
import 'package:pokedex/modules/home/components/app_bar_home.dart';
import 'package:pokedex/modules/home/controllers/pokedexapicontroller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PokedexApiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PokedexApiController();
    _controller.fecthPodekex();
  }

  @override
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
          AppBarHome(),
          Positioned(
            child: Container(
              child: Observer(
                builder: (context) {
                  return FutureBuilder<PokedexModel>(
                    future: _controller.pokedexModel,
                    builder: (context, response) {
                      switch (response.connectionState) {
                        case ConnectionState.none:
                        case ConnectionState.waiting:
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                          break;
                        case ConnectionState.active:
                          break;
                        case ConnectionState.done:
                          return gridAnimated(response);
                          break;
                        default:
                          return Center(child: Text("Erro inesperado"));
                      }
                      return gridAnimated(response);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  gridAnimated(AsyncSnapshot<PokedexModel> response) {
    return AnimationLimiter(
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: response.data.pokemon.length,
        padding: EdgeInsets.all(20),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredGrid(
            position: index,
            columnCount: 3,
            duration: Duration(milliseconds: 355),
            child: ScaleAnimation(
              duration: Duration(milliseconds: 500),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text(response.data.pokemon[index].name),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  Widget build(BuildContext) {
    return Container(
      height: 200,
      //color: Colors.red,
      child: Column(
        children: [
          Container(
            //  color: Colors.blue,
            padding: EdgeInsets.only(right: 38, top: 75),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              )
            ]),
          ),
          Container(
              //Rcolor: Colors.orange,
              padding: EdgeInsets.only(top: 5, left: 22),
              child: Row(
                children: [
                  Text(
                    'POKEDEX',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

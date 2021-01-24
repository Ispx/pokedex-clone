import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:pokedex/core/consts/constsapp.dart';
import 'package:pokedex/core/interfaces/pokedexapi_interface.dart';
import 'package:pokedex/core/models/pokedex_model.dart';
import 'dart:convert';

class PokedexRepository implements IPokedexApi {
  Dio dio = Dio();

  static PokedexRepository instance = PokedexRepository._();
  PokedexRepository._();

  @override
  Future<PokedexModel> get() async {
    Response response = await dio.get(ConstsApp.urlAPI);
    var decode = jsonDecode(response.data);
    return PokedexModel.fromJson(decode);
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedexapicontroller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokedexApiController on _PokedexApiControllerBase, Store {
  final _$pokedexModelAtom =
      Atom(name: '_PokedexApiControllerBase.pokedexModel');

  @override
  Future<PokedexModel> get pokedexModel {
    _$pokedexModelAtom.reportRead();
    return super.pokedexModel;
  }

  @override
  set pokedexModel(Future<PokedexModel> value) {
    _$pokedexModelAtom.reportWrite(value, super.pokedexModel, () {
      super.pokedexModel = value;
    });
  }

  final _$fecthPodekexAsyncAction =
      AsyncAction('_PokedexApiControllerBase.fecthPodekex');

  @override
  Future fecthPodekex() {
    return _$fecthPodekexAsyncAction.run(() => super.fecthPodekex());
  }

  @override
  String toString() {
    return '''
pokedexModel: ${pokedexModel}
    ''';
  }
}

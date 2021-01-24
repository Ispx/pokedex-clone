import 'package:mobx/mobx.dart';
import 'package:pokedex/core/models/pokedex_model.dart';
import 'package:pokedex/modules/home/repository/pokedex_repository.dart';
part 'pokedexapicontroller.g.dart';

class PokedexApiController = _PokedexApiControllerBase
    with _$PokedexApiController;

abstract class _PokedexApiControllerBase with Store {
  @observable
  Future<PokedexModel> pokedexModel;

  @action
  fecthPodekex() async {
    pokedexModel = PokedexRepository.instance.get();
  }
}

import 'package:get/get.dart';

import 'package:hsd_challenge/app/data/models/player.dart';

import 'package:hsd_challenge/app/data/repositories/players_repository.dart';

class HomeController extends GetxController {
  @override
  void onReady() {
    _loadData();
  }

  final PlayersRepository _playersRepository = Get.find<PlayersRepository>();
  //final MetaRepository _metaRepository = Get.find<MetaRepository>();

  List<Player> _players = [];
  Map<String, List<Player>> teams = Map<String, List<Player>>().obs;

  int page = 1;

  void incrementPage() async {}

  Future<void> _loadData() async {
    try {
      _players = await _playersRepository.getPlayers(page);

      // para criar o time com seus jogadores
      for (Player player in _players) {
        if (teams.containsKey(player.team.fullName)) {
          teams[player.team.fullName].add(player);
        } else {
          teams[player.team.fullName] = [player];
        }
      }
      update();
      print(teams);
    } catch (e) {
      print(e);
    }
  }
}

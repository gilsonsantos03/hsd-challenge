import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hsd_challenge/app/data/models/meta.dart';
import 'package:hsd_challenge/app/data/models/player.dart';
import 'package:hsd_challenge/app/data/repositories/meta_repository.dart';
import 'package:hsd_challenge/app/data/repositories/players_repository.dart';

class HomeController extends GetxController {
  @override
  void onReady() {
    _loadData();
    incrementPage();
  }

  final PlayersRepository _playersRepository = Get.find<PlayersRepository>();
  final MetaRepository _metaRepository = Get.find<MetaRepository>();

  List<Player> players = [];
  Map<String, List<Player>> teams = Map<String, List<Player>>();

  // página inicial
  int page = 1;

  Future<void> incrementPage() async {
    try {
      Meta meta = await _metaRepository.getMetaInfo();
      int totalPages = meta.totalPages;

      if (page == totalPages) {
        Get.dialog(
          AlertDialog(
            title: Text("Limite de páginas alcançado"),
            content: Text('Não há mais times'),
            actions: [
              FlatButton(
                onPressed: Get.back,
                child: Text('OK'),
              ),
            ],
          ),
        );
      } else {
        page++;
        List<Player> playersTemp = await _playersRepository.getPlayers(page);
        Map<String, List<Player>> teamsTemp = Map<String, List<Player>>();

        // para pegar os valores da nova página
        for (Player player in playersTemp) {
          if (teamsTemp.containsKey(player.team.fullName)) {
            teamsTemp[player.team.fullName].add(player);
          } else {
            teamsTemp[player.team.fullName] = [player];
          }
        }

        // para adicionar os dados de teamsTemp em teams
        // tem que ser assim, pois os métodos padrões dos maps add ou addAll
        // sobrescrevem os valores que já estavam lá
        for (String key in teamsTemp.keys.toList()) {
          // print(key);
          if (teams.containsKey(key)) {
            List<Player> list = teams[key];
            list.addAll(teamsTemp[key]);
            teams.putIfAbsent(key, () => list);
          } else {
            List<Player> list2 = teamsTemp[key];
            teams.putIfAbsent(key, () => list2);
          }
        }

        update();
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> _loadData() async {
    try {
      players = await _playersRepository.getPlayers(page);

      // para criar o time com seus jogadores
      for (Player player in players) {
        if (teams.containsKey(player.team.fullName)) {
          teams[player.team.fullName].add(player);
        } else {
          teams[player.team.fullName] = [player];
        }
      }
      //print(teams);
      update();
    } catch (e) {
      print(e);
    }
  }
}

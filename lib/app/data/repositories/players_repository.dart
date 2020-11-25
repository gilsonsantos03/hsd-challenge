import 'package:get/get.dart';
import 'package:hsd_challenge/app/data/models/player.dart';
import 'package:hsd_challenge/app/data/providers/players_api.dart';

class PlayersRepository {
  final PlayerApi _playerApi = Get.find<PlayerApi>();

  Future<List<Player>> getPlayers(int page) => _playerApi.getPlayers(page);
}

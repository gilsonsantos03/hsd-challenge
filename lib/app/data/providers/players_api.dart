import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hsd_challenge/app/data/models/player.dart';

class PlayerApi {
  final Dio _dio = Get.find<Dio>();

  Future<List<Player>> getPlayers(int page) async {
    final Response response = await _dio.get('players');

    return (response.data['data'] as List)
        .map((e) => Player.fromJson(e))
        .toList();
  }
}

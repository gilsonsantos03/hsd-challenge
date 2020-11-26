import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hsd_challenge/app/data/providers/meta_api.dart';
import 'package:hsd_challenge/app/data/providers/players_api.dart';
import 'package:hsd_challenge/app/data/repositories/meta_repository.dart';
import 'package:hsd_challenge/app/data/repositories/players_repository.dart';

class DependencyInjection {
  static void init() {
    Get.put<Dio>(
      Dio(BaseOptions(baseUrl: "https://www.balldontlie.io/api/v1/")),
    );

    Get.put<PlayerApi>(
      PlayerApi(),
    );

    Get.put<PlayersRepository>(
      PlayersRepository(),
    );

    Get.put<MetaApi>(
      MetaApi(),
    );

    Get.put<MetaRepository>(
      MetaRepository(),
    );
  }
}

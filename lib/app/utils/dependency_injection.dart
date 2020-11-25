import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hsd_challenge/app/data/providers/players_api.dart';

class DependencyInjection {
  static void init() {
    Get.lazyPut<Dio>(
        () => Dio(BaseOptions(baseUrl: "https://www.balldontlie.io/api/v1/")),
        fenix: true);

    Get.lazyPut<PlayerApi>(
      () => PlayerApi(),
      fenix: true,
    );
  }
}

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hsd_challenge/app/data/models/meta.dart';

class MetaApi {
  final Dio _dio = Get.find<Dio>();

  Future<Meta> getMetaInfo() async {
    final Response response = await _dio.get('players');

    return Meta.fromJson(response.data['meta']);
  }
}

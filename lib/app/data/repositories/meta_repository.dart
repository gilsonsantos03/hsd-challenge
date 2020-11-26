import 'package:get/get.dart';
import 'package:hsd_challenge/app/data/models/meta.dart';

import 'package:hsd_challenge/app/data/providers/meta_api.dart';

class MetaRepository {
  final MetaApi _metaApi = Get.find<MetaApi>();

  Future<Meta> getMetaInfo() => _metaApi.getMetaInfo();
}

import 'package:get/get.dart';
import 'package:hsd_challenge/app/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    _init();
  }

  _init() async {
    await Future.delayed(Duration(seconds: 3));
    Get.offNamed(AppRoutes.HOME);
  }
}

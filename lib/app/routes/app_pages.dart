import 'package:get/get.dart';
import 'package:hsd_challenge/app/modules/home/home_binding.dart';
import 'package:hsd_challenge/app/modules/home/home_page.dart';
import 'package:hsd_challenge/app/modules/splash/splash_binding.dart';
import 'package:hsd_challenge/app/modules/splash/splash_page.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}

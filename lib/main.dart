import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hsd_challenge/app/modules/splash/splash_binding.dart';
import 'package:hsd_challenge/app/modules/splash/splash_page.dart';
import 'package:hsd_challenge/app/routes/app_pages.dart';
import 'package:hsd_challenge/app/utils/dependency_injection.dart';

void main() {
  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HSD Front Challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffFCFCFC),
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
    );
  }
}

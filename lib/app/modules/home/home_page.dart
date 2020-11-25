import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hsd_challenge/app/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) => Scaffold());
  }
}

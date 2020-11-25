import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hsd_challenge/app/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(
                  'NBA Teams',
                  style: TextStyle(
                    fontFamily: 'Geomanist',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color(0xff2D2E2F),
                  ),
                ),
                leading: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Color(0xff522D2E2F),
                ),
                backgroundColor: Color(0xffFCFCFC),
              ),
            ));
  }
}

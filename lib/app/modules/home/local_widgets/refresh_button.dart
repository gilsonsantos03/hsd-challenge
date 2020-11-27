import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';

Widget refreshButton(Function func) {
  return IconButton(
    icon: Icon(Icons.refresh_sharp),
    color: Colors.grey[400],
    iconSize: 44.0,
    onPressed: func,
  );
}

Widget refreshButtonAnimated(AnimateIconController controller, Function func) {
  return AnimateIcons(
    startTooltip: 'Icons.refresh',
    endTooltip: 'Icons.refresh',
    startIcon: Icons.refresh,
    endIcon: Icons.refresh,
    size: 40.0,
    controller: controller,
    duration: Duration(milliseconds: 300),
    clockwise: true,
    color: Colors.grey[400],
    onStartIconPress: () {
      if (controller.isStart()) {
        func();
        controller.animateToEnd();
      }
      return true;
    },
    onEndIconPress: () {
      if (controller.isEnd()) {
        func();
        controller.animateToStart();
      }
      return true;
    },
  );
}

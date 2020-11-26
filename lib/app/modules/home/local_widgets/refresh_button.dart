import 'package:flutter/material.dart';

Widget refreshButton(Function func) {
  return IconButton(
    icon: Icon(Icons.refresh_sharp),
    color: Colors.grey[400],
    iconSize: 44.0,
    onPressed: func,
  );
}

import 'package:flutter/material.dart';

class CounterItemModel {
  int counter = 0;
  String text;
  Color color;
  CounterItemModel({required this.text, required this.color});

  void add() {
    counter++;
  }
}

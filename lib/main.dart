import 'package:back/views/electronic_counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: electronicCounter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

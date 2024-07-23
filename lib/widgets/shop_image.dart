import 'package:flutter/material.dart';

class ShopImage extends StatelessWidget {
  const ShopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Image(image: AssetImage('assets/images/sh.png'))),
    );
  }
}

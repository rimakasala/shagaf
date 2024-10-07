import 'package:flutter/material.dart';

class ImageShagaf extends StatelessWidget {
  const ImageShagaf({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/shagaf.png'),
          )
      ),
    );
  }
}

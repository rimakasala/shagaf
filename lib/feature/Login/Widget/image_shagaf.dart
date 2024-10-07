import 'package:flutter/material.dart';

import '../../../core/utils/asseets.dart';
class ImageShagaf extends StatelessWidget {
  const ImageShagaf({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/shagaf.png'),
          )
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../Widget/confiarminfo.dart';
import '../Widget/image_shagaf.dart';

class ConfiarmPassword extends StatelessWidget {
  const ConfiarmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Column(
          children: [
            ImageShagaf(),
            ConfiarmInfo(),
          ],
        )
        );
  }
}

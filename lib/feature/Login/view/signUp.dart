import 'package:flutter/material.dart';

import '../Widget/SignUp_info.dart';
import '../Widget/image_shagaf.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          ImageShagaf(),
          SignUpInfo(),
        ],
      ),
    );
  }
}

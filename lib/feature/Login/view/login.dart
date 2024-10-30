import 'package:flutter/material.dart';
import '../Widget/Login_info.dart';
import '../Widget/image_shagaf.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          ImageShagaf(),
          LoginInfo(),
        ],
      ),
    );
  }
}

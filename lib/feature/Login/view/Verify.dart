import 'package:flutter/material.dart';
import '../Widget/verify_info.dart';
class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          VerifyInfo(),
        ],
      ),
    );
  }
}

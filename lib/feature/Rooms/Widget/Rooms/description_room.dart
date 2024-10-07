import 'package:flutter/material.dart';
class DescriptionRoom extends StatelessWidget {
  const DescriptionRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child:Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 15
        ),),
    );
  }
}

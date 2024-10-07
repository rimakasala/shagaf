import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 20),
          child: Icon(Icons.arrow_back_ios,size: 20,color: Colors.grey[600],),
        ),
    Padding(
      padding: const EdgeInsets.only(top: 20,right: 20),
      child: Icon(Icons.notification_important,size: 20,color: Colors.grey[600]),
    ),
      ],
    );
  }
}

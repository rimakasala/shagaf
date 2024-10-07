import 'package:flutter/material.dart';
class Titlestyle extends StatelessWidget {
  const Titlestyle({super.key,required this.title,required this.color});
  final title;
  final color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13,top: 8,bottom: 8),
      child: Text(title,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color
      ),),
    );
  }
}

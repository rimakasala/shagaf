import 'package:flutter/material.dart';
import 'package:shagaf/core/widget/titleStyle.dart';
class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key,required this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.orange[900],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Titlestyle(title:title, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
class AmenitiesItem extends StatelessWidget {
   const AmenitiesItem({super.key, required this.icon, required this.textDescription});
  final icon;
  final textDescription;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        width: double.infinity,
        height: 30,
        child: Row(
          children: [
            Icon(icon,
            size: 17,),
            const SizedBox(width: 10,),
            Text(textDescription,
            maxLines: 1,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300
            ),)
          ],
        ),
      ),
    );
  }
}

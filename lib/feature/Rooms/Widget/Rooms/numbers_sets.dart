import 'package:flutter/material.dart';
class NumbersSets extends StatelessWidget {
   NumbersSets({super.key, required this.numberSets});
  var numberSets;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset:const Offset(0, 3)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.chair_outlined,
          size: 17,
          color: Colors.orange[900],),
          Text('$numberSets Seats',
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300
          ),
          )
        ],
      ),
    );
  }
}

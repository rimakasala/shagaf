import 'package:flutter/material.dart';
class Rate extends StatelessWidget {
  const Rate({super.key});
  final rate=4.7;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 20,
      decoration: BoxDecoration(
        color: Color(0x85F04C29),
        borderRadius: BorderRadius.all(Radius.circular(20))
        
      ),
      
      child:Row(
        children: [
          Icon(Icons.star,
          size: 15,
          color: Color(0xffFCD53F),),
          Text('$rate',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 15
          ),),
        ],
      ),
    );
  }
}

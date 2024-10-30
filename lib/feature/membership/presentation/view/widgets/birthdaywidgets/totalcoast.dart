import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TotalCost extends StatelessWidget {
  final int totalCost;

  TotalCost({required this.totalCost});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0Xff20473E),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Loading",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            "EGP $totalCost",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

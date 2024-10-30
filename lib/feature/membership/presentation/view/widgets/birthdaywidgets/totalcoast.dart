import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TotalCost extends StatelessWidget {
  final int totalCost;

  const TotalCost({super.key, required this.totalCost});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),  
      child: Container(
        color: const Color(0Xff20473E),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Loading",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Text(
              "EGP $totalCost",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

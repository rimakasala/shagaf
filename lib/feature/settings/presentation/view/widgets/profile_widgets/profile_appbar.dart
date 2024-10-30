import'package:flutter/material.dart';
class Profileappbar extends StatelessWidget {
const Profileappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
  
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_left,
                size: 25, color: Colors.black)),
                const SizedBox(width: 75,),
        const Text(
          "Profile",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        )  
      ],
    );
  }
}

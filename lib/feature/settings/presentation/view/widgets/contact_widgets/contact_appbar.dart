import 'package:flutter/material.dart';

class ContactAppbar extends StatelessWidget {
  const ContactAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
  
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_left,
                size: 25, color: Colors.black)),
                const SizedBox(width: 60,),
        const Text(
          "Contact Us",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        )  
      ],
    );
  }
}

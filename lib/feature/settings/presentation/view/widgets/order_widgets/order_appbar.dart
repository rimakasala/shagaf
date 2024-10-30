import 'package:flutter/material.dart';
class OrderAppbar extends StatelessWidget {
  const OrderAppbar({super.key});

  @override
  Widget build(BuildContext context) {
      return Row(
  
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_left_sharp,
                size: 25, color: Colors.black)),
                const SizedBox(width: 80,),
        const Text(
          "Orders",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        )  
      ],
    );
  }
}

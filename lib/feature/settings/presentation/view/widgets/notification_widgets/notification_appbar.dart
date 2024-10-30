import 'package:flutter/material.dart';
class NotificationAppbar extends StatelessWidget {
  const NotificationAppbar({super.key});

  @override

  Widget build(BuildContext context) {
    return Row(
  
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_left_rounded,
                size: 25, color: Colors.black)),
                const SizedBox(width: 65,),
        const Text(
          "Notification",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        )  
      ],
    );
  }
}

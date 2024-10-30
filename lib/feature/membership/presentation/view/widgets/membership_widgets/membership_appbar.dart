import 'package:flutter/material.dart';
class MembershipAppbar extends StatelessWidget {
  const MembershipAppbar ({super.key});

  @override
  Widget build(BuildContext context) {
      return Row(
  
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_left_sharp,
                size: 25, color: Colors.black)),
                const SizedBox(width: 75,),
        const Text(
          "Membership",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        )  
      ],
    );
  }
}

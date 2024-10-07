import 'package:flutter/material.dart';
class Eventappbar extends StatelessWidget {
  const Eventappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_on,size: 24,color: Colors.black)),
        const Text("Events",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.menu_outlined,size: 24,color: Colors.black)),


      ],
    );
  }
}

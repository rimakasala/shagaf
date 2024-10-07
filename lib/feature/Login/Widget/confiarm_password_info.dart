import 'package:flutter/material.dart';
class ConfiarmPasswordInfo extends StatelessWidget {
   ConfiarmPasswordInfo({super.key});
  TextEditingController nameControllerConfiarmPass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10,),
          child: const Text('Confirm password',),
        ),
        Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: nameControllerConfiarmPass,
            decoration:  const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              constraints: BoxConstraints(maxHeight: 30),
              prefixIcon: Icon(Icons.lock_outline,size: 15,color: Colors.grey,),
              border: OutlineInputBorder(),
              hintText: 'Confirm password ',
              hintStyle: TextStyle(
                height: 2.9,
                color: Colors.grey,
                fontWeight : FontWeight.w300,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

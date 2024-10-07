import 'package:flutter/material.dart';
class UserNameInfo extends StatelessWidget {
  const UserNameInfo({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController anameControllerUser=TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10,left: 10,),
          child: const Text('User Name',),
        ),
        Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: anameControllerUser,
            decoration:  const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              constraints: BoxConstraints(maxHeight: 30),
              prefixIcon: Icon(Icons.person,size: 15,color: Colors.grey,),
              border: OutlineInputBorder(),
              hintText: 'Enter your name ',
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

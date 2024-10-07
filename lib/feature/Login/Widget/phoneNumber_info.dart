import 'package:flutter/material.dart';
class PhoneNumberInfo extends StatelessWidget {
  const PhoneNumberInfo({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameControllerEmail=TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10,left: 10,),
          child: const Text('Phone Number'),
        ),
    Padding(
    padding:  const EdgeInsets.symmetric(horizontal: 10),
    child: TextField(
      keyboardType: const TextInputType.numberWithOptions(),
    controller: nameControllerEmail,
    decoration:  const InputDecoration(
    filled: true,
    fillColor: Colors.white,
    constraints: BoxConstraints(maxHeight: 30),
    prefixIcon: Icon(Icons.phone_outlined,size: 15,color: Colors.grey,),
    border: OutlineInputBorder(),
    hintText: 'Enter your phone number ',
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

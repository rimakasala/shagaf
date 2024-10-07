import 'package:flutter/material.dart';

class PasswordInfo extends StatefulWidget {
  const PasswordInfo({super.key});

  @override
  State<PasswordInfo> createState() => _PasswordInfoState();
}

class _PasswordInfoState extends State<PasswordInfo> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameControllerPasswprd = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 10,
            left: 10,
          ),
          child: const Text(
            'Password',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: nameControllerPasswprd,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              constraints: BoxConstraints(maxHeight: 30),
              prefixIcon: Icon(
                Icons.lock_outline,
                size: 15,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(),
              hintText: 'Enter your password ',
              hintStyle: TextStyle(
                height: 2.9,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
                fontSize: 15,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                'Forget Password?',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.w300,
                    fontSize: 10),
              ),
            )
          ],
        ),
      ],
    );
  }
}

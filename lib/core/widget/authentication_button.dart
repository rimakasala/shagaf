import 'package:flutter/material.dart';
class AuthenticationButton extends StatelessWidget {
  const AuthenticationButton({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 40,
      decoration: const BoxDecoration(
          color: Color(0xff20473E),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child:  Center(child: Text(' $data',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      )
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shagaf/core/widget/authentication_button.dart';
import 'package:shagaf/feature/Login/Widget/password_info.dart';
import 'package:shagaf/feature/Login/Widget/phoneNumber_info.dart';
import 'package:shagaf/feature/Login/Widget/userName_info.dart';
import 'package:shagaf/feature/Login/view/confiarmPassword.dart';

import 'confiarm_password_info.dart';

class SignUpInfo extends StatelessWidget {
  const SignUpInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: 340,
      decoration: BoxDecoration(
        color: const Color(0xfffce9be),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            const PhoneNumberInfo(),
            const UserNameInfo(),
            const PasswordInfo(),
             ConfiarmPasswordInfo(),
            const SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConfiarmPassword()));
                },
                child: const AuthenticationButton(data: 'SIGN UP')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account? ',
                    style: TextStyle(fontSize: 10)),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "LogIn");
                  },
                  child: const Text('Log In',
                      style: TextStyle(fontSize: 14, color: Colors.red)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

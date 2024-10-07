import 'package:flutter/material.dart';
import 'package:shagaf/feature/Login/Widget/password_info.dart';
import 'package:shagaf/feature/Login/Widget/phoneNumber_info.dart';
import 'package:shagaf/feature/Rooms/view/home.dart';
import '../../../../core/widget/authentication_button.dart';

class LoginInfo extends StatelessWidget {
  const LoginInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        width: 350,
        decoration: const BoxDecoration(
          color: Color(0x80FBD57D),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PhoneNumberInfo(),
            const PasswordInfo(),
             Padding(
              padding: EdgeInsets.only(top: 30),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  },
                  child: AuthenticationButton(data: 'Log In')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account? ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "SignUp");
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(color: Color(0xffF04C29), fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ));
  }
}

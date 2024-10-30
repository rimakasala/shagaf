import 'package:flutter/material.dart';
import 'package:shagaf/feature/Login/Widget/phoneNumber_info.dart';
import 'package:shagaf/feature/Login/view/Verify.dart';
import '../../../core/widget/authentication_button.dart';

class ConfiarmInfo extends StatelessWidget {
  const ConfiarmInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: 350,
      height: 250,
      decoration: const BoxDecoration(
        color: Color(0x80FBD57D),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const

         Padding(

            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              'Forgot Your Password?',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),

          const

          Padding(

            padding: EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              'Enter your phone number, we will send you confirmation code',
              maxLines: 2,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          const PhoneNumberInfo(),
          const SizedBox(


            height: 30,
          ),
          PhoneNumberInfo(),
          SizedBox(

            height: 10,
          ),
          InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const Verify()));
              },
              child: const AuthenticationButton(data: 'Reset Password'))



        ,
  ])
    );
  }
}

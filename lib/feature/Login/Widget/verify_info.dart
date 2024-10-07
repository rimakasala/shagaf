import 'package:flutter/material.dart';
import '../../../core/widget/authentication_button.dart';
import 'Success_AlertDialog.dart';
import 'Verification_Form.dart';
import 'image_shagaf.dart';
class VerifyInfo extends StatelessWidget {
  const VerifyInfo({super.key});


  @override
  Widget build(BuildContext context) {
    int number= 012345678 ;
    return Column(
      children: [
        const ImageShagaf(),
        Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          width: 350,
          decoration: const BoxDecoration(
            color: Color(0x80FBD57D),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Enter Verification Code',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                ),
                ),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(text: 'Enter code that we have sent to your number',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[400]
                    ),
                    ),
                    TextSpan(text: '  $number',
                    style: TextStyle(
                      color: Colors.grey[900]
                    ))
                  ]
                ),
                ),
                const VerificationForm(),
                MaterialButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: SuccessAlertdialog()),
                    );
                  },
                  child: const AuthenticationButton(data: 'Verify'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shagaf/core/utils/asseets.dart';
import 'package:shagaf/core/widget/authentication_button.dart';
import 'package:shagaf/feature/Rooms/view/home.dart';
class SuccessAlertdialog extends StatelessWidget {
  const SuccessAlertdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                  height:100,
                  child: Image(image: AssetImage(alartImage))),
              const Text('Success', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text('You have successfully reset your password.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[500]
              ),
              ),
              const SizedBox(height: 10),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
                  },
                  child: const AuthenticationButton(data: 'Done')),
              const SizedBox(height: 25,)
            ],
          ),
        ),
      ),
    );
  }
}

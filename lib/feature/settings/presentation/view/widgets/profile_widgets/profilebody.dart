import'package:flutter/material.dart';
import 'package:shagaf/feature/settings/presentation/view/widgets/profile_widgets/profile_appbar.dart';
import 'package:shagaf/feature/settings/presentation/view/widgets/profile_widgets/textformfiled.dart';
class Profilebody extends StatelessWidget {
  const Profilebody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Profileappbar(),
        SizedBox(height: 30,),
        Textformfiled(hinttext: 'Maysem Muhammed', uptext: 'Full Name', prefix: null,),
                Textformfiled(hinttext: '0123456789', uptext: 'Phone Number ', prefix: null,),
                        Textformfiled(hinttext: 'Enter your passwrd', uptext: 'Change Password', prefix: Icon(Icons.lock_outline),),
                                Textformfiled(hinttext: 'Confirm Password', uptext: 'Confirm Password', prefix: Icon(Icons.lock_outline),),

      ],
    );
  }
}
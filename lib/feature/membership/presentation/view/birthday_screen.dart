import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/birthday_body.dart';
class BirthdayScreen extends StatelessWidget {
  const BirthdayScreen({super.key});

  @override  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return  Scaffold(
          body: BirthdayBody(),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/Membership_screen.dart';
import 'package:shagaf/feature/membership/presentation/view/birthday_screen.dart';



main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return SafeArea(
          child: MaterialApp(
           debugShowCheckedModeBanner: false,
            home: child,
          ),
        );
      },
      child: const BirthdayScreen(),
    );
  }
}

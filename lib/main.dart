import 'package:flutter/material.dart';
import 'package:shagaf/feature/Rooms/view/rooms.dart';
import 'package:shagaf/feature/splash/view/splash.dart';
import 'feature/Login/view/confiarmPassword.dart';
import 'feature/Login/view/login.dart';
import 'feature/Login/view/signUp.dart';
import 'feature/splash/view/sghaf_splash.dart';


main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rooms(),
    ));
  }
}

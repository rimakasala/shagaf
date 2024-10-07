import 'package:flutter/material.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Eventswidgets/Eventbody.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Eventsscreen extends StatelessWidget {
  const Eventsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return const Scaffold(
            body: Eventbody(),
          );
        });
  }
}

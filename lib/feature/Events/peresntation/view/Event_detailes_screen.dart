import 'package:flutter/material.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Event_ditaileswidgets/Event_detailes_body.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 class EventDetailesScreen extends StatelessWidget {
   const EventDetailesScreen({super.key});

   @override
   Widget build(BuildContext context) {
     return ScreenUtilInit(
         designSize: const Size(390, 844),
     builder: (context, child) {
   return  const Scaffold(
         body: EventDetailesBody());
       }
       )
     ;
   }
 }

import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/settings/presentation/view/widgets/order_widgets/order_body.dart';
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override 
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return const Scaffold(
          body: OrderBody(),
          );
        });
  }
}

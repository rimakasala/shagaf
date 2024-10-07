import 'package:flutter/material.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Offers_widgets/offers_body.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return const Scaffold(
            body: OffersBody(),
          );
        });
  }
}

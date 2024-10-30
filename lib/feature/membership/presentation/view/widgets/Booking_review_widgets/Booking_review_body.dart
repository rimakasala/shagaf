import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/Booking_review_widgets/Booking_details.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/Booking_review_widgets/Cancellationbotton.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/Booking_review_widgets/bookbotton.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/Booking_review_widgets/payment_widget.dart';

import 'discounts_widget.dart';

class Booking_review_body extends StatelessWidget {
  const Booking_review_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BookingDetails(),
        PaymentWidget(),
        DiscountsWidget(),
        Bookbotton(),
        Cancellationbotton()

      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/widget/titleStyle.dart';
import 'amenities_item.dart';
class AmenitiesBox extends StatelessWidget {
  const AmenitiesBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Titlestyle(title: 'Amenities', color: Colors.orange[900]),
          const AmenitiesItem(icon: Icons.chair_outlined, textDescription: 'Printer, Scanner and photocopier'),
          const AmenitiesItem(icon: Icons.wifi, textDescription: 'Wi-fi'),
          const AmenitiesItem(icon: Icons.free_breakfast_outlined, textDescription: 'Free coffee'),
          const AmenitiesItem(icon: Icons.live_tv_outlined, textDescription: 'Video Conf'),
          const AmenitiesItem(icon: Icons.screenshot_monitor_rounded, textDescription: 'LED screen'),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.keyboard_double_arrow_down_rounded,
                size: 20,)
            ],
          )

        ],
      ),
    );
  }
}

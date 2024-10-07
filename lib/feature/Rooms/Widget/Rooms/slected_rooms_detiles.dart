import 'package:flutter/material.dart';
import 'package:shagaf/core/widget/titleStyle.dart';
import 'package:shagaf/feature/Rooms/Widget/Rooms/amenities_box.dart';
import 'package:shagaf/feature/Rooms/Widget/Rooms/description_room.dart';
import 'package:shagaf/feature/Rooms/Widget/Rooms/numbers_sets.dart';
class SlectedRoomsDetiles extends StatelessWidget {
  const SlectedRoomsDetiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollable(viewportBuilder: (context,index){
      return SizedBox(
        width: double.infinity,
        child:Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Titlestyle(title: 'Training room', color: Colors.orange[900]),
              NumbersSets(numberSets: 30),
              const DescriptionRoom(),
              const AmenitiesBox(),

            ],
          ),
        ),
      );
    });
  }
}

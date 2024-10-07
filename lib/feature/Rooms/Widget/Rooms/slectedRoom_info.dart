import 'package:flutter/material.dart';
import 'package:shagaf/feature/Rooms/Widget/Rooms/imageSlectedRoom.dart';
import 'package:shagaf/feature/Rooms/Widget/Rooms/slected_rooms_detiles.dart';
class SlectedRoomInfo extends StatelessWidget {
  const SlectedRoomInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:   ImageSlectedRoom(),
        ),
        SliverToBoxAdapter(
          child: SlectedRoomsDetiles(),
        )
      ],
    );
  }
}

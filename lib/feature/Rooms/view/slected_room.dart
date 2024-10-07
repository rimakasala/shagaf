import 'package:flutter/material.dart';
import 'package:shagaf/feature/Rooms/Widget/Rooms/rooms_info.dart';
import 'package:shagaf/feature/Rooms/Widget/Rooms/slectedRoom_info.dart';
class SlectedRoom extends StatelessWidget {
  const SlectedRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SlectedRoomInfo()
    );
  }
}

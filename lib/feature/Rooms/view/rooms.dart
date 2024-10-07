import 'package:flutter/material.dart';
import 'package:shagaf/feature/Rooms/Widget/Rooms/rooms_info.dart';
class Rooms extends StatelessWidget {
  const Rooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Rooms')),
        leading: const Icon(Icons.arrow_back),
      ),
      body: const RoomsInfo(),
    );
  }
}

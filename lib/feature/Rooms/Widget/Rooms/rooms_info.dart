import 'package:flutter/material.dart';
import 'package:shagaf/feature/Rooms/Data/data.dart';
import 'package:shagaf/feature/Rooms/Widget/Rooms/rooms_box.dart';

class RoomsInfo extends StatelessWidget {
   const RoomsInfo({super.key,});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemBuilder: (context,index){
      return RoomsBox(image: rooms[index].image, title:rooms[index].title);
    },
    itemCount: rooms.length,);
  }
}
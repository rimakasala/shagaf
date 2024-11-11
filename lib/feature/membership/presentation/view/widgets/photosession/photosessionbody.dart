import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/item_card.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/photosession/photosessionlist.dart';

import '../birthdaywidgets/totalcoast.dart';

class Photosessionbody extends StatefulWidget {
  const Photosessionbody({super.key});

  @override
  State<Photosessionbody> createState() => _PhotosessionbodyState();
}

class _PhotosessionbodyState extends State<Photosessionbody> {
  final List<Item> photosessionitems = [
    Item(
      name: 'Filming with a video camera outside the rooms',
      image: 'images/photose1.png',
      price: 500,
      count: 0,    
    ),
        Item(
      name: 'Filming with a video camera in the rooms',
      image: 'images/photose1.png',
      price: 250,
      count: 0,    
    ),
        Item(
      name: 'Filming with a photo camera. Camera entry fee to the place',
      image: 'images/photose1.png',
      price: 400,
      count: 0,    
    ),
  ];
  
  int totalCost = 0;
void _incrementItem(Item item) {
    setState(() {
      item.count += 1;
      totalCost += item.price;
    });
  }

  void _decrementItem(Item item) {
    setState(() {
      if (item.count > 0) {
        item.count -= 1;
        totalCost -= item.price;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        SingleChildScrollView(
          child: Photosessionlist(items: photosessionitems,
          onIncrement: _incrementItem, onDecrement: _decrementItem,),
        ),
      
          Padding(
            padding: const EdgeInsets.only(top: 250,left: 8,right: 8),
            child: TotalCost(totalCost: totalCost),
          ), 
      ],
     
    );
  }
}

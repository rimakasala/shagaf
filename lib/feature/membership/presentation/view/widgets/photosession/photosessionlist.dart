import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/item_card.dart';

import 'sessioncard.dart';
class Photosessionlist extends StatefulWidget {
  
  final List<Item> items;
    final Function(Item) onIncrement;
  final Function(Item) onDecrement;

  const Photosessionlist({super.key, required this.items, required this.onIncrement, required this.onDecrement});

  @override
  State<Photosessionlist> createState() => _PhotosessionlistState();
}

class _PhotosessionlistState extends State<Photosessionlist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      
        const SizedBox(height: 10),
      
        ...widget.items.map((item) => Sessioncard(
          item: item,
            onIncrement: () => widget.onIncrement(item),
              onDecrement: () => widget.onDecrement(item) ,
        
        )),
      ],
    );
  }
}

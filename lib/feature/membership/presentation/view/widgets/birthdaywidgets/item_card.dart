import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Item {
  String name;
  int price;
  int count;
  String image;

  Item({required this.name, required this.price, this.count = 0, required this.image});
}

class ItemCard extends StatelessWidget {
  
 final Item item;
  final Function onIncrement;
  final Function onDecrement;

  ItemCard({super.key,required this.item, required this.onIncrement, required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.network('${item.image}',fit: BoxFit.fill, width: 50, height: 50), 
        title: Text(item.name),
        subtitle: Text('${item.price} LE'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (item.count > 0)
              Row(
                children: [
                  Text('= ${item.count}'),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => onDecrement(),
                  ),
                ],
              ),
            IconButton(
              icon: Icon(Icons.add, color: Color(0xFFF04C29)),
              onPressed: () => onIncrement(),
            ),
          ],
        ),
      ),
    );
  }
}
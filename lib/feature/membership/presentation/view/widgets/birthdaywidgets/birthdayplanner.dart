import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/item_card.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/itemlist.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/totalcoast.dart';

class Birthdayplanner extends StatefulWidget {
  const Birthdayplanner( {super.key, });
  

  @override
  _BirthdayplannerState createState() => _BirthdayplannerState(); 
}

class _BirthdayplannerState extends State<Birthdayplanner> {



   final List<Item> cakes = [
    Item(name: 'From 1 to 6 person', price: 300, count: 0, image: 'images/cake1.png'),
    Item(name: 'From 7 to 10 persons', price: 500, count: 0, image: 'images/cake2.png'),
    Item(name: 'From 11 to 20 person', price: 750, count: 0, image: 'images/cake3.png'),
  ];

  final List<Item> decorations = [
    Item(
        name: '2 helium balloons, a happy birthday ribbon, and two balloons',
        price: 450,
        count: 0,
        image: 'images/decoration1.png'),
    Item(name: 'Without helium balloons', price: 350, count: 0, image: 'images/decoration2.png'),
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
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
        
          
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemList(
                    title: "Cakes",
                    items: cakes,
                    onIncrement: _incrementItem,
                    onDecrement: _decrementItem,
                  ),
                  const SizedBox(height: 20),
                  ItemList(
                    title: "Decoration",
                    items: decorations,
                    onIncrement: _incrementItem,
                    onDecrement: _decrementItem,
                  ),
                ],
              ),
            ),
            TotalCost(totalCost: totalCost),
          ],
        ),
      )
    ;
  }
}
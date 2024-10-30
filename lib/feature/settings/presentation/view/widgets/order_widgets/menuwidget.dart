import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/settings/presentation/view/widgets/order_widgets/itemdetails.dart';
import 'package:shagaf/feature/settings/presentation/view/widgets/order_widgets/menuimage.dart';

class Menuwidget extends StatefulWidget {
  const Menuwidget({super.key});

  @override
  State<Menuwidget> createState() => _MenuwidgetState();
}

class _MenuwidgetState extends State<Menuwidget> {
  String selectedCategory = 'ColdDrinks'; // Ensure this matches a key in menuItems
  final Map<String, List<Map<String, dynamic>>> menuItems = {
    'ColdDrinks': [
      {'name': 'Water', 'price': 10, 'image': 'images/water.png', 'count': 1},
      {'name': 'Juice', 'price': 15, 'image': 'images/juice.png', 'count': 1},
      {'name': 'Fresh juice', 'price': 20, 'image': 'images/freshjuice.png', 'count': 1},
      {'name': 'Pepsi', 'price': 20, 'image': 'images/pepsi.png', 'count': 1},
      {'name': 'Fayrouz', 'price': 20, 'image': 'images/fayrouz.png', 'count': 1},
    ],
    'HotDrinks': [
      {'name': 'Tea', 'price': 10, 'image': 'images/water.png', 'count': 1},
      {'name': 'Coffee', 'price': 20, 'image': 'images/water.png', 'count': 1},
      {'name': 'Hot Chocolate', 'price': 25, 'image': 'images/water.png', 'count': 1},
    ],
    'Snacks': [
      {'name': 'Chips', 'price': 10, 'image': 'images/water.png', 'count': 1},
      {'name': 'Cookies', 'price': 15, 'image': 'images/water.png', 'count': 1},
      {'name': 'Nuts', 'price': 20, 'image': 'images/water.png', 'count': 1},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: menuItems.keys.map((category) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = category;
                    print('Selected category: $selectedCategory'); // Debug print
                  });
                },
                child: Column(
                  children: [
                    Menuimage(image: 'images/${category.toLowerCase()}.png'),
                    Text(
                      category,
                      style: TextStyle(
                        color: selectedCategory == category ? const Color(0xFFF04C29) : Colors.black,
                        fontWeight: selectedCategory == category ? FontWeight.bold : FontWeight.normal,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Divider(
                        color: selectedCategory == category ? const Color(0xFFF04C29) : Colors.white,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
          Expanded(
            child: ListView.builder(
              
              itemCount: menuItems[selectedCategory]!.length,
              itemBuilder: (context, index) {
                
                Map item = menuItems[selectedCategory]![index];
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Itemdetails(
                    
                    image: item['image'],
                    name: item['name'],
                    price: item['price'],
                    count: item['count'],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

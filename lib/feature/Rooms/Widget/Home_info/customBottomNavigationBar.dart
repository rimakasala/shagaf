import 'package:flutter/material.dart';
import 'package:shagaf/core/utils/asseets.dart';
class CustomBottomNavigationBar extends StatefulWidget {

   const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (int x){
          setState(() {
            index=x;
          });
        },
        currentIndex: index,
        selectedItemColor: colorThemTeal,
        unselectedItemColor: Colors.grey,
        items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home,
          ),
        label:'home',
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_outlined,
            ),
          label: 'Book'
      ),
      BottomNavigationBarItem(
          icon:Icon(Icons.local_offer,
            ),
          label: 'offers'),
       BottomNavigationBarItem(icon: Icon(Icons.menu,
        ),
          label: 'more',  )
    ]);
  }
}


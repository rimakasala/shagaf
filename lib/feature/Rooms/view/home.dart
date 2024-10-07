import 'package:flutter/material.dart';
import 'package:shagaf/feature/Rooms/Widget/Home_info/home_info.dart';

import '../../../core/utils/asseets.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.notification_important,size: 20,color: Colors.grey[600]),
          ),
        ],
      ),
      body:const homeInfo(),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                    height: 150,
                    child: Image(image: AssetImage(shagaf))),
              ),
              ListTile(
                leading: Icon(Icons.person_outline,color: colorThemRed,),
                title: const Text('Profile'),
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.language,color: colorThemRed),
                title: const Text('English'),
              ),
              ListTile(
                leading:  Icon(Icons.shopping_cart,color: colorThemRed),
                title:  const Text('Orders'),
                onTap: (){},
              ),
              ListTile(
                leading:  Icon(Icons.notification_important,color: colorThemRed),
                title:  const Text('Notification'),
                onTap: (){},
              ),
              ListTile(
                leading:  Icon(Icons.star,color: colorThemRed),
                title:  const Text('Rating'),
                onTap: (){},
              ),
              ListTile(
                leading:  Icon(Icons.contact_page_outlined,color: colorThemRed),
                title:  const Text('Contact Us'),
                onTap: (){},
              ),
            ],
          ),
        ),
      ),

    );
  }
}

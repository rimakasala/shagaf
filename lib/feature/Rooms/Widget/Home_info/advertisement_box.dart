import 'package:flutter/material.dart';
class AdvertisementBox extends StatelessWidget {
<<<<<<< HEAD
  const AdvertisementBox(
=======
  AdvertisementBox(
>>>>>>> origin/main
      {super.key, required this.image, required this.price, required this.time, required this.date, required this.title});

  final image;
  final title;
  final date;
  final time;
  final price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
<<<<<<< HEAD
      margin: const EdgeInsets.only(right: 10),
=======
      margin: EdgeInsets.only(right: 10),
>>>>>>> origin/main
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff20473E),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
              height: 140,
              margin: const EdgeInsets.only(left: 5
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(image),
                  fit: BoxFit.fill
                ),
              ),
          ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             const SizedBox(height: 20,),
             Text('$title', style: const TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 10,
               color: Colors.white,
             ),),
             const SizedBox(height: 10,),
             Text('on $date', style: const TextStyle(
                 fontSize: 8,
                 fontWeight: FontWeight.w300,
               color: Colors.white,
             ),),
             const SizedBox(height: 15,),
             Text('from $time', style: const TextStyle(
                 fontSize: 8,
                 fontWeight: FontWeight.w300,
               color: Colors.white,
             ),),
             const SizedBox(height: 15,),
             Text('$price for one person', style: const TextStyle(
                 fontSize: 8,
                 fontWeight: FontWeight.w300,
               color: Colors.white,
             ),
             ),
           ],
         )
        ],
      ),
    );
  }
}

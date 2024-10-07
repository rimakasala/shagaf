import 'package:flutter/material.dart';
import 'package:shagaf/core/widget/rate.dart';
import 'package:shagaf/core/widget/titleStyle.dart';

import '../../../../core/utils/asseets.dart';
class Homecontainer extends StatelessWidget {
  const Homecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width:double.infinity,
        height: 250,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(Home_background),
              fit: BoxFit.fill),
        ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Row(
            children: [
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.orange[900],
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.location_on,color: Colors.white60,size: 15,),
                  Text('Location',style: TextStyle(
                      color: Colors.white
                  ),
                  ),
                ],
              ),
            ),
          ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Titlestyle(title: 'Delightful open air', color: Colors.white,),
              Rate(),
            ],
          )
        ],
        ),
      ),
    );
  }
}

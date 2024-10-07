import 'package:flutter/material.dart';

import '../../../core/utils/asseets.dart';
class Onboardcontent extends StatelessWidget {
   Onboardcontent({super.key,required this.image,required this.title,required this.description});
  String image;
  String title;
  String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          color: colorThemTeal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage(image),fit: BoxFit.fill,),
              Text(title,style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),
              Container(
                margin: const EdgeInsets.only(left: 30,top: 25,bottom: 10),
                child: Text(description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xffFFC100),
                ),),
              ),
            ],
          ),
        )
      ],
    );
  }
}

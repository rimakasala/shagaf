import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SeatsContainer extends StatefulWidget {
  const SeatsContainer({super.key});

  @override
  State<SeatsContainer> createState() => _SeatsContainerState();
}

class _SeatsContainerState extends State<SeatsContainer> {
    int _seats = 1;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
        Card(
          elevation: 5,
          shadowColor: Colors.black,
          child: Container(
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                
            
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.account_circle_outlined,size: 20,color: Colors.grey,),
                        SizedBox(width: 9,),
                        Text('Number of seats',style:TextStyle(fontSize: 15,color: Colors.black) ,),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon:  Icon(Icons.remove_circle_outline,size: 20,color:const Color(0xFFF04C29).withOpacity(.8)),
                          onPressed: () {
                            setState(() {
                              if (_seats > 1) _seats--;
                            });
                          },
                        ),
                        Text('$_seats',style: const TextStyle(fontSize: 15,color: Colors.black),),
                        IconButton(
                          icon:  const Icon(Icons.add_circle_outline,size: 20,color: Color(0xFFF04C29),),
                          onPressed: () {
                            setState(() {
                              _seats++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ),
    ],);
  }
}
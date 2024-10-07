import 'package:flutter/material.dart';

import '../../../../core/widget/rate.dart';
class ImageSlectedRoom extends StatelessWidget {
  const ImageSlectedRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('images/rooms1.jpeg'),
        fit: BoxFit.fill)
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Icon(Icons.arrow_back_ios),
                  )),
              Text('reem',style: TextStyle(
                fontSize: 20
              ),
              ),
              MaterialButton(onPressed: (){},
                textColor: const Color(0xfff04C29),
                color: const Color(0x80ffffff),
                shape: const CircleBorder(),
                child: const Icon(Icons.favorite,
                  size: 24,),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.orange[900],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.location_on,color: Colors.white60,size: 15,),
                          Text('Roxy',style: TextStyle(
                              color: Colors.white
                          ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

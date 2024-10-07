import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BackgraoundImage extends StatefulWidget {
  const BackgraoundImage({super.key});

  @override
  State<BackgraoundImage> createState() => _BackgraoundImageState();
}

class _BackgraoundImageState extends State<BackgraoundImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,height: 454.h,
      decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage("images/event2.png"),fit: BoxFit.fill)
      ),
      child: Column(


       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             InkWell(
                 onTap: (){
                   Navigator.pop(context);
                 },
                 child: const Padding(
                   padding: EdgeInsets.all(15),
                   child: Icon(Icons.arrow_back_ios),
                 )),
             const Text("Events",style: TextStyle(
                 fontSize: 20,color: Colors.black,fontWeight:
                 FontWeight.w500
             )),
             MaterialButton(onPressed: (){},
               textColor: const Color(0xfff04C29),
               color: const Color(0x80ffffff),
               shape: const CircleBorder(),
               child: const Icon(Icons.favorite,
                 size: 24,),
             ),
           ],
         ),
         const SizedBox(

           height: 175,
         ),
         Column(
           mainAxisAlignment: MainAxisAlignment.end,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.all(25.0),
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

               ]),
    );
  }
}

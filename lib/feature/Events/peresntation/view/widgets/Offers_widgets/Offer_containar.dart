import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferContainar extends StatelessWidget {
  const OfferContainar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // controls the size of the shadow
      shadowColor: Colors.black,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 220.w,height: 250.h,
          decoration: const BoxDecoration(
            color: Colors.white
            ,
           
      
          ),
          child: Column(
      
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(10)),
                child: Container(
                  width: double.maxFinite,height: 76,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: NetworkImage("images/offers.png"),fit: BoxFit.fill),
                  ),

                ),
              )
              ,
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Align( alignment: Alignment.topLeft,
                    child: Text("Today’s offer",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),)),
              )
              ,Expanded(
      
                child: Padding(
                  padding: const EdgeInsets.only(left:8,top: 3,right: 3,bottom: 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const Flexible(
                      child: SizedBox(
                      width: 120,
                      height: 120,
                      child:Text("10% discount on 3 hours or more",maxLines: 2,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 10),),
                      ),
                      ),
      
                    InkWell(
                      onTap: (){showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(

    content: Flexible(
      child: SizedBox(
        height: 180.h,
        width: 313.w
        ,
        child: Padding(
          padding: const EdgeInsets.only(top: 30,),
          child: Column(

           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[

                SizedBox(
                  width:23.w
                    ,height: 18.h,
                    child: const Image(image: NetworkImage("images/offericon.png"),fit: BoxFit.fill,)),
                Flexible(child: SizedBox(
                  width: 238.w,height: 16.h,
                    child: Text("  30% off 10 booking(up to EGP 150)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12.sp))))
              ]),

              Padding(
                padding: const EdgeInsets.only(top: 15,left: 8,right: 8,bottom: 8),
                child: SizedBox(width: 149.w,height: 33.h,
                    child: const Image(image: NetworkImage("images/offercode.png"),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    width: 113.w,height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF04C29),
                      borderRadius: BorderRadius.circular(12)
                    ),

                    child: Center(
                      child: Text("Copy",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
    actions: const [
    // TextButton(
    // onPressed: () {
    // Navigator.of(context).pop();
    // },
    // child: Text('OK'),
    // ),
    ],
    );
    },
    );
    },

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          height: 20,width: 20,
                          color: const Color(0xFFF04C29),
                          child:const Center(child: Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 15,))
                        ),
                      ),
                    )
      
                  ],),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

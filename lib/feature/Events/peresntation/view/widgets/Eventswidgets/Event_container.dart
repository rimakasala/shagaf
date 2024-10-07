import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Event_container extends StatefulWidget {
  const Event_container({super.key, required this.Image, required this.Title});
  final  String Image;
  final String Title;
  @override
  State<Event_container> createState() => _Event_containerState(Image: Image, Title: Title,);
}

class _Event_containerState extends State<Event_container> {
  final  String Image;
  final String Title;

  _Event_containerState({required this.Image, required this.Title});

  @override
  Widget build(BuildContext context) {
     return Card(
      elevation: 5, // controls the size of the shadow
      shadowColor: Colors.black,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 220.w,height: 250,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(

            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(10)),
                child: Container(
                  width: double.maxFinite,height: 100.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(Image),fit: BoxFit.fill),
                  ),
                ),
              )
                  ,Padding(
                padding: const EdgeInsets.only(left:8,top: 8,right: 3 ,bottom: 3),
                child: SizedBox(
                  width:143,height: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(Title,maxLines: 2,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12.sp),),
                      ),
                      InkWell(
                        onTap: () {
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



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Itemdetails extends StatefulWidget {
   Itemdetails(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
       required this.count});
  String image;
 String name;
   int price;
   int count;

  @override
  State<Itemdetails> createState() =>
      _ItemdetailsState(image: image, name: name, price: price, count: count);
}

class _ItemdetailsState extends State<Itemdetails> {
String image;
 String name;
   int price;
 int count;

  _ItemdetailsState(
      {required this.image,
      required this.name,
      required this.price,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3, // controls the size of the shadow
                shadowColor: Colors.black,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 342.w,
            height: 90.h,
            color: Colors.white,
            child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
            
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 65.w,
                      height: 65.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(image), fit: BoxFit.fill)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "${price.toString()} LE",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ]),
                  ),
                ],
              ),
            
              Card(
                elevation: 3, // controls the size of the shadow
                shadowColor: Colors.black,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 127.w,
                    height: 40.h,
                    color: Colors.white,
                    child: Center(
                      child: Row(
                        
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: IconButton(
                                  onPressed: () {
                                                          
                                      if (count >=0) {
                                                setState(() {
                                                count = count--;
                                                
                                      });
                                              }
                                  },
                                  icon: Icon(
                                    Icons.minimize,
                                    color: const Color(0xFFF04C29).withOpacity(0.5),
                                  )),
                            ),
                            Text(
                              count.toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            IconButton(
                                onPressed: () {
                                  
                      setState(() {
                      count = count++;
                      
                                    });
                                      
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Color(0xFFF04C29),
                                ))
                          ]),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

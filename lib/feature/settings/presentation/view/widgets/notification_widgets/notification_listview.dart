import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class notification {
  final String title;
  final String day;
  final String time;
  final String image;

  notification(
      {required this.title,
      required this.day,
      required this.time,
      required this.image});
}

class NotificationListview extends StatelessWidget {
  NotificationListview({super.key});
  List<notification> notifications = [
    notification(
      title: 'Ceramics workshop Event',
      day: 'Today',
      time: '12:05 pm',
      image: 'images/event2.png',
    ),
    notification(
      title: 'Ceramics workshop Event',
      day: 'Today',
      time: '12:05 pm',
      image: 'images/event2.png',
    ),
    notification(
      title: 'Ceramics workshop Event',
      day: 'Today',
      time: '12:05 pm',
      image: 'images/event2.png',
    ),
    notification(
      title: 'Ceramics workshop Event',
      day: 'Today',
      time: '12:05 pm',
      image: 'images/event2.png',
    ),
    notification(
      title: 'Ceramics workshop Event',
      day: 'Today',
      time: '12:05 pm',
      image: 'images/event2.png',
    ),
    notification(
      title: 'Ceramics workshop Event',
      day: 'Today',
      time: '12:05 pm',
      image: 'images/event2.png',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 750
      .h,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                      width: 85.w,
                      height: 85.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(notifications[index].image),
                            fit: BoxFit.fill),
                            
                      ),
                      ),
                ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(notifications[index].title,style: TextStyle(color: Colors.black,fontSize: 25.sp),),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            
                          
                            children: [
                              Text(notifications[index].day,style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w400),),
                              const SizedBox(width: 5,),
                              Text(notifications[index].time,style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                            
                          ]),
                        )
                      
                    ])
              ]),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Divider(
                  thickness:2,
                  color: Color(0xFF263238)
                  
                ),
              )
            ],
          );
        },
        itemCount: notifications.length,
      ),
    );
  }
}

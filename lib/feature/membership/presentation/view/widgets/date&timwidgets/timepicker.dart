import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TimePicker extends StatelessWidget {
  const TimePicker({super.key, required this.title, required this.selectedTime, required this.onTimePicked});
 final String title;
  final TimeOfDay selectedTime;
  final ValueChanged<TimeOfDay> onTimePicked;



  @override
  Widget build(BuildContext context) {
    return Column(
      

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontSize: 16.sp,color: Colors.black,fontWeight: FontWeight.w500),),
          ],
        ),
        const SizedBox(height: 13,),
        GestureDetector(
          onTap: () async {
            TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: selectedTime,
            );
            if (pickedTime != null) {
              onTimePicked(pickedTime);
            }
          },
          child: Text(
            selectedTime.format(context),
            style: TextStyle(fontSize: 16.sp,color: Colors.black,fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
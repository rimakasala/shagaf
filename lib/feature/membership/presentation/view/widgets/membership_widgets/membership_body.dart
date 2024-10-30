import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/membership_widgets/15separate.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/membership_widgets/checkbotton.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/membership_widgets/membership_appbar.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/membership_widgets/monthdetails.dart';
class MembershipBody extends StatelessWidget {
  const MembershipBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const MembershipAppbar(),
        Padding(
          padding: const EdgeInsets.only(left:15,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Checkbotton(),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text("A month",style: TextStyle(color: Colors.black,fontSize: 25.sp),),
              )
            ],
          ),
        ),
        const Monthdetails(),
          Padding(
          padding: const EdgeInsets.only(left:15,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Checkbotton(),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text("15 Separate days",style: TextStyle(color: Colors.black,fontSize: 25.sp),),
              ),
              
        
            ],
          )),
          const separate15(),
          const SizedBox(
              height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 342.w,
                  height: 50.h,
                  color: const Color(0xFF20473E),
                  child: Center(
                    child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                  ),
                
                ),
              ),
            ),
          )
        
      ], 
    );
  }
}

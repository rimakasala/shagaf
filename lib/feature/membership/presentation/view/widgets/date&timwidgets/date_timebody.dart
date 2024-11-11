import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/date&timwidgets/datepicker.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/date&timwidgets/seatscontainer.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/date&timwidgets/timewidget.dart';

import 'nextbotton.dart';
class Date_Timebody extends StatelessWidget {
  const Date_Timebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
          const Padding(
            padding:  EdgeInsets.all(8),
            child: Datepicker(),
          ),
          
          
         Padding(
            padding: const EdgeInsets.all(8),
            child: Timewidget(),
          ),
      
          const Padding(
              padding:EdgeInsets.all(8) ,
              child: SeatsContainer(),
          ),
             
          const Padding(
            padding: EdgeInsets.only(left: 8,right: 8,),
            child:Nextbotton()
          
          
          )


      ],
    );
  }
}
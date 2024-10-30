import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/birthdayappbar.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/birthdayplanner.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/item_card.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/totalcoast.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/uppertext.dart';
class BirthdayBody extends StatelessWidget {
   BirthdayBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Birthdayappbar(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20,)),
        SliverToBoxAdapter(
          child: Uppertext(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20,)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left:15),
            child: Text("Cakes",style: TextStyle(color: Colors.black,fontSize: 20.sp),),
          ),
        ),
        SliverToBoxAdapter(
          child:Birthdayplanner()
        ),

      
      ],
    );
  }
}
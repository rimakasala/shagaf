import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/birthdayappbar.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/birthdayplanner.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/item_card.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/totalcoast.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/uppertext.dart';
class BirthdayBody extends StatelessWidget {
   const BirthdayBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Birthdayappbar(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20,)),
        SliverToBoxAdapter(
          child: Uppertext(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20,)),
      
        SliverToBoxAdapter(
          child:Birthdayplanner()
        ),

      
      ],
    );
  }
}
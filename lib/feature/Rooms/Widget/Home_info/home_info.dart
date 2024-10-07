import 'package:flutter/material.dart';
import 'package:shagaf/core/utils/asseets.dart';
import 'package:shagaf/core/widget/titleStyle.dart';
import 'package:shagaf/feature/Rooms/Widget/Home_info/customBottomNavigationBar.dart';
import 'package:shagaf/feature/Rooms/Widget/Home_info/homeContainer.dart';
import 'package:shagaf/feature/Rooms/Widget/Home_info/option_list.dart';
import 'package:shagaf/feature/Rooms/Widget/Home_info/options_widget.dart';
import '../../../Login/Widget/customAppBar.dart';
import '../../Data/data.dart';
import 'advertisement_box.dart';

class homeInfo extends StatelessWidget {
  const homeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Homecontainer(),
        ),
        const SliverToBoxAdapter(
          child: Titlestyle(title: 'Advertisement', color: Colors.black,),),
        SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                height: 130,
                child: ListView.builder(itemBuilder: (context,index){
                  return AdvertisementBox(image: data[index].image, price: data[index].price, time: data[index].time, date: data[index].date, title: data[index].title);
                },
                  itemCount: data.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                ),
              ),
            ),
        ),
        const SliverToBoxAdapter(
          child: OptionList(),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/home.png'),
              fit: BoxFit.fill),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
              height: 60,
              child: CustomBottomNavigationBar()),
        )
      ],
    );
  }
}
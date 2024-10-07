import 'package:flutter/material.dart';
import 'package:shagaf/core/utils/asseets.dart';
import 'package:shagaf/feature/Rooms/Widget/Home_info/options_widget.dart';
class OptionList extends StatelessWidget {
  const OptionList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(itemBuilder: (context,index){
        return  OptionsWidget(title: option[index].title);
      },
        scrollDirection: Axis.horizontal,
      itemCount: option.length,),
    );
  }
}

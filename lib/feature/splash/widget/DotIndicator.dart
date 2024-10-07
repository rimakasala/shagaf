import 'package:flutter/material.dart';
import 'package:shagaf/core/utils/asseets.dart';
import 'package:shagaf/feature/splash/data/Spalsh_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class DotIndicator extends StatefulWidget {
   const DotIndicator({super.key, this.isActive=false});
  final bool isActive;

  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
PageController controller =PageController();

Color kPrimaryColor =Colors.green;

  @override
  Widget build(BuildContext context) {
    double currentIndexPage= 0;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SmoothPageIndicator(
          controller:controller ,
          count: demoData.length,
        effect: WormEffect(
            dotWidth:  24.0,
            dotHeight:  16.0,
            strokeWidth:  1.5,
            dotColor:  const Color(0x80f04c29),
            activeDotColor:   colorThemRed,
        ),
      ),
    );


    // return DotsIndicator(
    //   dotsCount: demoData.length,
    //   position: currentIndexPage,
    //   onTap: (position) {
    //     setState(() => currentIndexPage = position);
    //   },
    //    reversed: true,
    //   decorator: const DotsDecorator(
    //     color: Color(0xfff04c2980),
    //     activeColor: Color(0xffF04C29),
    //     size: Size.square(10),
    //     activeSize: Size.square(20),
    //
    //   ),
    // );
    // return AnimatedContainer(
    //   duration: const Duration(milliseconds: 300),
    //   height: 40,
    //   width: isActive ? 24 : 8,
    //   decoration: BoxDecoration(
    //     color: isActive ? kPrimaryColor : Colors.purple,
    //     border: isActive ? null : Border.all(color: Colors.black),
    //     borderRadius: const BorderRadius.all(
    //       Radius.circular(1),
    //     ),
    //   ),
    // );;
  }
}

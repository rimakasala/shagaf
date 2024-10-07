import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shagaf/core/utils/asseets.dart';
import 'package:shagaf/feature/Login/view/login.dart';
import 'package:shagaf/feature/splash/data/Spalsh_data.dart';
import 'package:shagaf/feature/splash/widget/DotIndicator.dart';
import 'package:shagaf/feature/splash/widget/onBoardContent.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late PageController _pageController;
  late int _pageIndex;
   Timer? _timer;
   @override
  void initState() {
     _pageController =PageController(initialPage: 0);
     _timer =Timer.periodic(const Duration(seconds: 5), (Timer timer){
       if( _pageIndex<3){
         _pageIndex++;
       }
       else {
         _pageIndex=0;
       }
       _pageController.animateToPage(_pageIndex,
           duration: const Duration(seconds: 1),
           curve: Curves.easeIn);
     });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
     _pageController.dispose();
     _timer!.cancel();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorThemTeal,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
              },
              child: InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const Login()));
                },
                child: const Text('Skip',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:  BoxDecoration(
          color: colorThemTeal
        ),
        child: Column(
          children: [
            Expanded(child: PageView.builder(
              onPageChanged: (index){
                setState(() {
                  _pageIndex=index;
                });
              },
              itemBuilder:(context,index) =>Onboardcontent(image: demoData[index].image, title: demoData[index].title, description: demoData[index].description) ,
              itemCount: demoData.length,
            controller: _pageController,
            ),
            ),
            const DotIndicator(),
          ],
        ),

      ),
    );
  }
}

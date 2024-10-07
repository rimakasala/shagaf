import 'package:flutter/material.dart';
import 'package:shagaf/feature/splash/view/splash.dart';
class ShgafSplashBody extends StatefulWidget {
  const ShgafSplashBody({super.key});

  @override
  State<ShgafSplashBody> createState() => _ShgafSplashBodyState();
}
class _ShgafSplashBodyState extends State<ShgafSplashBody> with SingleTickerProviderStateMixin  {
  late AnimationController imageAnimationController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageAnimationController =AnimationController(vsync: this ,duration: Duration(seconds: 3));
    Future.delayed(Duration(seconds: 4),
        (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash()));
        });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('images/splash1.png'),
        fit: BoxFit.fill)
      ),
    );
  }
}

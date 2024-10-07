import 'package:flutter/material.dart';
import 'package:shagaf/core/widget/rate.dart';
import 'package:shagaf/core/widget/titleStyle.dart';
import 'package:shagaf/feature/Rooms/Data/data.dart';
import 'package:shagaf/feature/Rooms/view/slected_room.dart';
class RoomsBox extends StatelessWidget {
   RoomsBox({super.key, required this.image, required this.title});
  final image;
  final title;

  @override
  Widget build(BuildContext context) {
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SlectedRoom()));
        },
        child: Container(
          alignment: Alignment.topLeft,
          height: 200,
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(image: AssetImage(image),
                fit: BoxFit.fill),
          ),
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(onPressed: (){},
                    textColor: const Color(0xfff04C29),
                    color: const Color(0x80ffffff),
                    shape: const CircleBorder(),
                    child: const Icon(Icons.favorite,
                      size: 24,),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Rate(),
                  ),
                  Container(
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Titlestyle(title: title, color: Colors.black)
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }
}

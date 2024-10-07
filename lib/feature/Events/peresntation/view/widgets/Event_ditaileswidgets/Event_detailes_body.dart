import 'package:flutter/material.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Event_ditaileswidgets/Backgraound_image.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Event_ditaileswidgets/bookingcontianer.dart';

import 'package:shagaf/feature/Events/peresntation/view/widgets/Event_ditaileswidgets/detailscontanier.dart';
class EventDetailesBody extends StatelessWidget {
  const EventDetailesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
     //alignment: Alignment.bottomRight,
      children: [
        BackgraoundImage(),
    Align(
    alignment: Alignment.bottomCenter,
      child: Detailscontanier()),
      Align(
            alignment: Alignment.bottomCenter,
        child: Bookingcontianer()), 
        
      
    

      ],

    );
  }
}

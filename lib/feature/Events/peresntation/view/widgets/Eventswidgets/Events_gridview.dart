import 'package:flutter/material.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Eventswidgets/Event_container.dart';
class EventsGridview extends StatelessWidget {
  const EventsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      width: double.maxFinite,

      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          // Number of columns
        ),
        itemBuilder: (context, index) {
        if(index%2==0){
          return const Padding(
            padding: EdgeInsets.all(10.0),
            child: Event_container(Image: "images/event1.png", Title: "Positive education workshop"),
          );
        }
        else
          {
            return const Padding(
                padding: EdgeInsets.all(10.0),
          child:Event_container(Image: "images/event2.png", Title: "Ceramics workshop") ,);
          }
        },
        itemCount: 24, // Number of items
      ),
    );
  }
}

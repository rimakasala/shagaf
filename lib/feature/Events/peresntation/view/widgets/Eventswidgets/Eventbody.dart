import 'package:flutter/material.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Eventswidgets/Events_gridview.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Eventswidgets/eventappbar.dart';
class Eventbody extends StatelessWidget {
  const Eventbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Eventappbar(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20,)),
        SliverToBoxAdapter(child: EventsGridview(),)

      ],
    );
  }
}

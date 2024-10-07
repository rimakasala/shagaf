import 'package:flutter/material.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Offers_widgets/offer_gridview.dart';

import 'Appbar.dart';
class OffersBody extends StatelessWidget {
  const OffersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: Appbar(),),
        SliverToBoxAdapter(child: SizedBox(height: 20,)),
        SliverToBoxAdapter(child: OfferGridview(),)


      ],

    );
  }
}

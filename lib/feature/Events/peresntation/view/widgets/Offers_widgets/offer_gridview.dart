import 'package:flutter/material.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Offers_widgets/Offer_containar.dart';
class OfferGridview extends StatefulWidget {
  const OfferGridview({super.key});

  @override
  State<OfferGridview> createState() => _OfferGridviewState();
}

class _OfferGridviewState extends State<OfferGridview> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,width: double.maxFinite,

      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          // Number of columns
        ),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(10.0),
            child: OfferContainar(),
          );
        },
        itemCount: 20, // Number of items
      ),
    );
  }
}

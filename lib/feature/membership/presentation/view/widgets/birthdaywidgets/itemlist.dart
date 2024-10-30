import 'package:flutter/material.dart';

import 'item_card.dart';

class ItemList extends StatefulWidget {
  final String title;
  final List<Item> items;
  final Function(Item) onIncrement;
  final Function(Item) onDecrement;

  const ItemList({
    required this.title,
    required this.items,
    required this.onIncrement,
    required this.onDecrement,
    super.key,
  });

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
      
        ...widget.items.map((item) => ItemCard(
          item: item,
          onIncrement: () => widget.onIncrement(item),
          onDecrement: () => widget.onDecrement(item),
        )),
      ],
    );
  }
}

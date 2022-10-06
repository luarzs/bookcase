import 'package:bookcase/src/models/item_model.dart';
import 'package:bookcase/src/pages/book/book_screen.dart';
import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;

  const ItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Conteúdo do Tile
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (c) {
              return BookScreen(item: item);
            }));
          },
          child: Card(
            elevation: 2,
            shadowColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Expanded(
              child: Image.asset(item.imgUrl),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bookcase/src/config/app_data.dart' as app_data;

import '../home/item.tile.dart';

class LibraryTab extends StatefulWidget {
  const LibraryTab({Key? key}) : super(key: key);

  @override
  State<LibraryTab> createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: const Center(
              child: Text(
                'Biblioteca',
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 95 / 144),
              itemCount: app_data.items.length,
              itemBuilder: (_, index) {
                return ItemTile(
                  item: app_data.items[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

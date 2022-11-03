import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const ProductItem(
      {Key? key, required this.imageUrl, required this.id, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

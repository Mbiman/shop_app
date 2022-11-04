import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/screens/products_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const ProductItem(
      {Key? key, required this.imageUrl, required this.id, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(),
          ),
          leading: IconButton(
            color: Colors.orange,
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
            ),
          ),
          trailing: IconButton(
            color: Colors.orange,
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.namedRoutes,
              arguments: id,
            );
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

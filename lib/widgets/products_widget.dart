import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './products_item.dart';
import '../providers/products_provider.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ProductItem(
        imageUrl: products[index].imageUrl,
        id: products[index].id,
        title: products[index].title,
      ),
    );
  }
}

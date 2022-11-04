import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const namedRoutes = '/product-detail';
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProducts = Provider.of<ProductsProvider>(context, listen: false)
        .findById(productId);
    final appBarTitle = loadedProducts.title;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:maccabi/stores/product_store.dart';

import '../locator.dart';
import 'components/category_card.dart';

final productStore = sl<ProductStore>();

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: productStore.items.length,
            itemBuilder: (context, index) {
              return CategoryCard(product: productStore.items[index]);
            },
          );
        },
      ),
    );
  }
}


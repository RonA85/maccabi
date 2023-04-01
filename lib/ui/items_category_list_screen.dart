import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:maccabi/stores/product_store.dart';
import 'package:maccabi/ui/components/product_card.dart';
import 'package:maccabi/utils/extensions/widget_extensions.dart';

import '../locator.dart';

final productStore = sl<ProductStore>();

class ItemsCategoryListScreen extends StatelessWidget {
  const ItemsCategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Observer(
              builder: (_) => PopupMenuButton<FilterItem>(
                    initialValue: productStore.filterItem,
                    // Callback that sets the selected popup menu item.
                    onSelected: (FilterItem filter) {
                      productStore.sortItemsByFilter(filter);
                    },
                    child: Center(child: Text("Sort").marginWidget(right: 8)),
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<FilterItem>>[
                      const PopupMenuItem<FilterItem>(
                        value: FilterItem.price,
                        child: Text('Price'),
                      ),
                      const PopupMenuItem<FilterItem>(
                        value: FilterItem.rating,
                        child: Text('Rating'),
                      ),
                      const PopupMenuItem<FilterItem>(
                        value: FilterItem.discountPercentage,
                        child: Text('Discount percentage'),
                      ),
                    ],
                  )),
        ],
      ),
      body: Observer(
        builder: (_) {
          return productStore.itemsCategory.isEmpty
              ? const Center(
                  child: Text(
                    "No items",
                    style: TextStyle(fontSize: 24),
                  ),
                )
              : ListView.builder(
                  itemCount: productStore.itemsCategory.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                        product: productStore.itemsCategory[index]);
                  },
                );
        },
      ),
    );
  }
}

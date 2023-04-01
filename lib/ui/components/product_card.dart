
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maccabi/utils/extensions/widget_extensions.dart';

import '../../data/entities/product.dart';
import '../items_category_list_screen.dart';

class ProductCard extends StatelessWidget{
  final Product product;
  const ProductCard({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.startToEnd,
      key: Key(product.id.toString()),
      onDismissed: (direction) {
        productStore.deleteItem(product);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8, left: 8, top: 6, bottom: 6),
        padding: const EdgeInsets.all(6),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.blue,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 45,
              height: 45,
              child: CachedNetworkImage(
                imageUrl: product.thumbnail,
                fit: BoxFit.cover,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ).marginWidget(right: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(color: Colors.black),
                ),
                Text("Price: ${product.price}, Rating: ${product.rating}")
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void delete(BuildContext context) {

}


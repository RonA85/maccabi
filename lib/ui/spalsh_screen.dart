import 'package:flutter/material.dart';
import 'package:maccabi/stores/product_store.dart';
import 'package:maccabi/ui/product_list_screen.dart';
import 'package:maccabi/utils/extensions/widget_extensions.dart';

import '../locator.dart';

final productStore = sl<ProductStore>();

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> fetchProducts() async {
    productStore.fetchProducts().then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProductListScreen()),
      );
    });
  }

  @override
  void initState() {
    fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: CircularProgressIndicator(),
      ).scrollWidget(),
    );
  }
}

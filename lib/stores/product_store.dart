import 'package:maccabi/data/remote/repositories/product_repository.dart';
import 'package:mobx/mobx.dart';

import '../data/entities/product.dart';
import '../locator.dart';

part 'product_store.g.dart';

enum FilterItem { price, rating, discountPercentage }

final productRepo = sl<ProductRepository>();

class ProductStore = ProductStoreBase with _$ProductStore;

abstract class ProductStoreBase with Store {
  @observable
  int selectedScreen = 0;

  @observable
  bool hideBar = false;

  List<Product> products = [];

  List<Product> filterByCategory = [];

  @observable
  ObservableList<Product> items = ObservableList();

  @observable
  ObservableList<Product> itemsCategory = ObservableList();

  @observable
  FilterItem filterItem = FilterItem.price;

  @action
  Future<void> fetchProducts() async {
    products = await productRepo.fetchProducts();
    products.sort((a, b) => a.category.compareTo(b.category));
    String tempCategory = '';
    for (final product in products) {
      if (product.category != tempCategory) {
        tempCategory = product.category;
        items.add(product);
      } else {
        items.last.stock = items.last.stock + product.stock;
      }
    }
  }

  @action
  Future<void> showCategoryItems(String category) async {
    itemsCategory.clear();
    filterByCategory =
        products.where((element) => element.category == category).toList();
    filterByCategory.sort((a, b) => a.price.compareTo(b.price));
    itemsCategory.addAll(filterByCategory);
  }

  @action
  Future<void> sortItemsByFilter(FilterItem filter) async {
    itemsCategory.clear();
    switch (filter) {
      case FilterItem.price:
        filterByCategory.sort((a, b) => a.price.compareTo(b.price));
        itemsCategory.addAll(filterByCategory);
        break;
      case FilterItem.rating:
        filterByCategory.sort((a, b) => a.rating.compareTo(b.rating));
        itemsCategory.addAll(filterByCategory);
        break;
      case FilterItem.discountPercentage:
        filterByCategory.sort((a, b) => a.discountPercentage.compareTo(b.discountPercentage));
        itemsCategory.addAll(filterByCategory);
        break;
    }
  }

  @action
  Future<void> deleteItem(Product product) async {
    itemsCategory.remove(product);
  }
}

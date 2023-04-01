// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductStore on ProductStoreBase, Store {
  late final _$selectedScreenAtom =
      Atom(name: 'ProductStoreBase.selectedScreen', context: context);

  @override
  int get selectedScreen {
    _$selectedScreenAtom.reportRead();
    return super.selectedScreen;
  }

  @override
  set selectedScreen(int value) {
    _$selectedScreenAtom.reportWrite(value, super.selectedScreen, () {
      super.selectedScreen = value;
    });
  }

  late final _$hideBarAtom =
      Atom(name: 'ProductStoreBase.hideBar', context: context);

  @override
  bool get hideBar {
    _$hideBarAtom.reportRead();
    return super.hideBar;
  }

  @override
  set hideBar(bool value) {
    _$hideBarAtom.reportWrite(value, super.hideBar, () {
      super.hideBar = value;
    });
  }

  late final _$itemsAtom =
      Atom(name: 'ProductStoreBase.items', context: context);

  @override
  ObservableList<Product> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(ObservableList<Product> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  late final _$itemsCategoryAtom =
      Atom(name: 'ProductStoreBase.itemsCategory', context: context);

  @override
  ObservableList<Product> get itemsCategory {
    _$itemsCategoryAtom.reportRead();
    return super.itemsCategory;
  }

  @override
  set itemsCategory(ObservableList<Product> value) {
    _$itemsCategoryAtom.reportWrite(value, super.itemsCategory, () {
      super.itemsCategory = value;
    });
  }

  late final _$filterItemAtom =
      Atom(name: 'ProductStoreBase.filterItem', context: context);

  @override
  FilterItem get filterItem {
    _$filterItemAtom.reportRead();
    return super.filterItem;
  }

  @override
  set filterItem(FilterItem value) {
    _$filterItemAtom.reportWrite(value, super.filterItem, () {
      super.filterItem = value;
    });
  }

  late final _$fetchProductsAsyncAction =
      AsyncAction('ProductStoreBase.fetchProducts', context: context);

  @override
  Future<void> fetchProducts() {
    return _$fetchProductsAsyncAction.run(() => super.fetchProducts());
  }

  late final _$showCategoryItemsAsyncAction =
      AsyncAction('ProductStoreBase.showCategoryItems', context: context);

  @override
  Future<void> showCategoryItems(String category) {
    return _$showCategoryItemsAsyncAction
        .run(() => super.showCategoryItems(category));
  }

  late final _$sortItemsByFilterAsyncAction =
      AsyncAction('ProductStoreBase.sortItemsByFilter', context: context);

  @override
  Future<void> sortItemsByFilter(FilterItem filter) {
    return _$sortItemsByFilterAsyncAction
        .run(() => super.sortItemsByFilter(filter));
  }

  late final _$deleteItemAsyncAction =
      AsyncAction('ProductStoreBase.deleteItem', context: context);

  @override
  Future<void> deleteItem(Product product) {
    return _$deleteItemAsyncAction.run(() => super.deleteItem(product));
  }

  @override
  String toString() {
    return '''
selectedScreen: ${selectedScreen},
hideBar: ${hideBar},
items: ${items},
itemsCategory: ${itemsCategory},
filterItem: ${filterItem}
    ''';
  }
}

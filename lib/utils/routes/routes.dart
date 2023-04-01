import 'package:flutter/material.dart';
import 'package:maccabi/ui/items_category_list_screen.dart';
import 'package:maccabi/ui/product_list_screen.dart';
import 'package:seafarer/seafarer.dart';


class Routes {
  static const String itemList = "/itemList";
  static const String itemsCategoryList = "/itemsCategoryList";

  static final seafarer = Seafarer(
    options: SeafarerOptions(
      handleNameNotFoundUI: true,
      isLoggingEnabled: true,
      customTransition: MyCustomTransition(),
      defaultTransitions: [
        SeafarerTransition.slide_from_bottom,
        SeafarerTransition.zoom_in,
      ],
      defaultTransitionCurve: Curves.decelerate,
      defaultTransitionDuration: const Duration(milliseconds: 500),
    ),
  );

  static void createRoutes() {
    seafarer.addRoutes(
      [
        SeafarerRoute(
          name: itemList,
          builder: (context, args, params) => const ProductListScreen(),
          defaultTransitions: [
            SeafarerTransition.fade_in,
            SeafarerTransition.fade_in
          ],
        ),
        SeafarerRoute(
          name: itemsCategoryList,
          builder: (context, args, params) => const ItemsCategoryListScreen(),
          defaultTransitions: [
            SeafarerTransition.fade_in,
            SeafarerTransition.fade_in
          ],
        ),
      ],
    );
  }
}

class MyCustomTransition extends CustomSeafarerTransition {
  @override
  Widget buildTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

class CustomRouteGuard extends SeafarerRouteGuard {
  @override
  Future<bool> canOpen(
    BuildContext? context,
    BaseArguments? args,
    ParamMap? paramMap,
  ) async {
    return false;
  }
}

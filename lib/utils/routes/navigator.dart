
import 'package:seafarer/seafarer.dart';

import 'routes.dart';

navigateAndReplace(String route, {BaseArguments? args}) {
  Routes.seafarer.pop();
  Routes.seafarer.navigate(route, args: args);
}

navigate(String route) async {
  return Routes.seafarer.navigate(route);
}

navigateUntil(String routeName,
    {BaseArguments? args, Map<String, dynamic>? params}) async {
  Routes.seafarer.popUntil((route) {
    return route.settings.name == routeName;
  });
  Routes.seafarer.navigate(routeName, args: args, params: params);
}



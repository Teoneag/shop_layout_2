import 'package:flutter/material.dart';
import 'package:shop_layout_2/main.dart';
import 'package:shop_layout_2/pages/buy_physical_page.dart';

class Routes {
  static const String home = '/home';
  static const String buyPhysical1 = '/buyPhysical1';
}

final Map<String, WidgetBuilder> routes = {
  Routes.home: (context) => const MyHomePage(),
  Routes.buyPhysical1: (context) => const BuyPhysicalPage(),
};

Route<dynamic> generateLocalRoutes(RouteSettings settings) {
  switch (settings.name) {
    case Routes.buyPhysical1:
      return MaterialPageRoute(
          builder: (context) =>
              BuyPhysicalPage(optionNr: settings.arguments as int?));
    default:
      return MaterialPageRoute(
        builder: (context) => const MyHomePage(),
      );
  }
}

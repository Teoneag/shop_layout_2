import 'package:flutter/material.dart';
import '/screens/buy_digital_screen.dart';
import '/screens/buy_physical_screen.dart';
import '/main.dart';

class Routes {
  static const String home = '/home';
  static const String buyPhysical1 = '/buyPhysical1';
  static const String buyDigital = '/buyDigital';
}

final Map<String, WidgetBuilder> routes = {
  Routes.home: (context) => const MyHomePage(),
  Routes.buyPhysical1: (context) => const BuyPhysicalScreen(),
  Routes.buyDigital: (context) => const BuyDigitalScreen(),
};

Route<dynamic> generateLocalRoutes(RouteSettings settings) {
  switch (settings.name) {
    case Routes.home:
      return MaterialPageRoute(
          builder: (context) => MyHomePage(
                section: settings.arguments as int,
              ));
    default:
      return MaterialPageRoute(builder: routes[settings.name]!);
  }
}

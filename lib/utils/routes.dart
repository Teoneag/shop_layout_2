import 'package:flutter/material.dart';
import '/screens/buy_digital_screen.dart';
import '/screens/buy_physical_screen.dart';
import '/main.dart';

class Routes {
  static const String home = '/home';
  static const String buyPhysical = '/buyPhysical1';
  static const String buyDigital = '/buyDigital';
}

final Map<String, WidgetBuilder> routes = {
  Routes.home: (context) => const MyHomePage(),
  Routes.buyPhysical: (context) => const BuyPhysicalScreen(),
  Routes.buyDigital: (context) => const BuyDigitalScreen(),
};

// TODO remove this if not needed

Route<dynamic> generateLocalRoutes(RouteSettings settings) {
  switch (settings.name) {
    default:
      return MaterialPageRoute(builder: routes[settings.name]!);
  }
}

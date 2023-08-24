import 'package:flutter/material.dart';
import '/main.dart';
import '/pages/buy_physical_page.dart';
// import '/pages/payment.dart';

class Routes {
  static const String home = '/home';
  static const String buyPhysical1 = '/buyPhysical1';
  // static const String payment = '/payment';
}

final Map<String, WidgetBuilder> routes = {
  Routes.home: (context) => const MyHomePage(),
  Routes.buyPhysical1: (context) => const BuyPhysicalPage(),
  // Routes.payment: (context) => const PaymentPage(),
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

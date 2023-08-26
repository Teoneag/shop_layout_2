import 'package:flutter/material.dart';
import '/widgets/prices_widget.dart';

class PhysicalPricesPage extends StatelessWidget {
  const PhysicalPricesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PricesWidget(3, 'Physical');
  }
}

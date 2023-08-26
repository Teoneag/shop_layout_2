import 'package:flutter/material.dart';
import '/widgets/card_widget.dart';
import '/widgets/page_widget.dart';

class PricesWidget extends StatelessWidget {
  final int optionShift;
  final String optionName;
  const PricesWidget(this.optionShift, this.optionName, {super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Pricing Plans for $optionName Products',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 15),
          const Text('Special prices for August'),
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 30),
              cardPrices(context, 1 + optionShift),
              const SizedBox(width: 30),
              cardPrices(context, 2 + optionShift),
              const SizedBox(width: 30),
              cardPrices(context, 3 + optionShift),
              const SizedBox(width: 30),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '/widgets/card_widget.dart';
import '/widgets/page_widget.dart';

class PricesWidget extends StatelessWidget {
  final int optionShift;
  final String optionName;
  const PricesWidget(this.optionShift, this.optionName, {super.key});

  @override
  Widget build(BuildContext context) {
    String month = DateFormat('MMMM').format(DateTime.now());
    return PageWidget(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Pricing Plans for $optionName Products',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 15),
          Text('Special prices for $month'),
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 30),
              CardPrices(1 + optionShift),
              const SizedBox(width: 30),
              CardPrices(2 + optionShift),
              const SizedBox(width: 30),
              CardPrices(3 + optionShift),
              const SizedBox(width: 30),
            ],
          ),
        ],
      ),
    );
  }
}

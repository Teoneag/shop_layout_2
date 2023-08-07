import 'package:flutter/material.dart';
import 'package:shop_layout_2/utils/consts.dart';
import 'package:shop_layout_2/widgets/app_bar.dart';
import 'package:shop_layout_2/widgets/card_widget.dart';

class BuyPhysicalPage extends StatelessWidget {
  final int? optionNr;
  const BuyPhysicalPage({this.optionNr, super.key});

  void _scrollToSection(double section) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(_scrollToSection),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                'Physical Products',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'Plan: ${packages[optionNr]![0]}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'Price: ${packages[optionNr]![1]}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'Profit: ${packages[optionNr]![2]}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              const Text('These products can be used there'),
              const SizedBox(height: 15),
              Text(
                "What's inside?",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              ...whatsInside
                  .map(
                    (e) => SizedBox(
                      width: 500,
                      child: cardCheck(e),
                    ),
                  )
                  .toList(),
              const SizedBox(height: 15),
              Card(
                child: Column(
                  children: [
                    Text(
                      'Order progress',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

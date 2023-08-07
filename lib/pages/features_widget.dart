import 'package:flutter/material.dart';
import 'package:shop_layout_2/widgets/card_widget.dart';
import 'package:shop_layout_2/widgets/page_widget.dart';

Widget featuresWidget(context) {
  return pageWidget(
    context,
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Features', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 15),
        const Text(
            'Nice to meet you. Here it is our benefits that you can learn'),
        const SizedBox(height: 30),
        Row(
          children: [
            const SizedBox(width: 30),
            cardFeatures(
              context,
              Icons.file_copy_rounded,
              'Clear Guides',
              "We're providing full guides with security, anonymity and lists of shops",
            ),
            const SizedBox(width: 30),
            cardFeatures(
              context,
              Icons.refresh,
              'Full Refund or Replace',
              "We're providing full guides with security, anonymity and lists of shops",
            ),
            const SizedBox(width: 30),
            cardFeatures(
              context,
              Icons.price_check,
              'Low prices',
              "We're providing full guides with security, anonymity and lists of shops",
            ),
            const SizedBox(width: 30),
          ],
        ),
      ],
    ),
  );
}

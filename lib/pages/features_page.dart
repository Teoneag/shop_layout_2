import 'package:flutter/material.dart';
import '/widgets/card_widget.dart';
import '/widgets/page_widget.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Features', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 15),
          const Text(
            'Nice to meet you. Here it is our benefits that you can learn',
          ),
          const SizedBox(height: 30),
          LayoutBuilder(
              builder: (BuildContext ctx, BoxConstraints constraints) {
            if (constraints.maxWidth > 600) {
              return Row(
                children: [
                  const SizedBox(width: 30),
                  card1(),
                  const SizedBox(width: 30),
                  card2(),
                  const SizedBox(width: 30),
                  card3(),
                  const SizedBox(width: 30),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  card1(isSmall: true),
                  card2(isSmall: true),
                  card3(isSmall: true),
                ],
              );
            }
          }),
        ],
      ),
    );
  }
}

Widget card1({bool isSmall = false}) => CardFeatures(
      Icons.file_copy_rounded,
      'Clear Guides',
      "We're providing full guides with security, anonymity and lists of shops",
      isSmall: isSmall,
    );

Widget card2({bool isSmall = false}) => CardFeatures(
      Icons.refresh,
      'Full Refund or Replace',
      "We're providing full guides with security, anonymity and lists of shops",
      isSmall: isSmall,
    );

Widget card3({bool isSmall = false}) => CardFeatures(
      Icons.price_check,
      'Low prices',
      "We're providing full guides with security, anonymity and lists of shops",
      isSmall: isSmall,
    );

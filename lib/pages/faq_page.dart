import 'package:flutter/material.dart';
import '/widgets/card_widget.dart';
import '../utils/strings.dart';
import '/widgets/page_widget.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Frequently Asked Questions',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              faqColumn(faq1),
              faqColumn(faq2),
            ],
          ),
        ],
      ),
    );
  }
}

Widget faqColumn(Map<String, String> faq) {
  return Column(
    children: faq.entries
        .map(
          (e) => CardFaq(e.key, e.value),
        )
        .toList(),
  );
}

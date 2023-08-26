import 'package:flutter/material.dart';
import '/widgets/card_widget.dart';
import '/utils/consts.dart';
import '/widgets/page_widget.dart';

Widget faqPage(BuildContext context) {
  return pageWidget(
    context,
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
            faqColumn(context, faq1),
            faqColumn(context, faq2),
          ],
        ),
      ],
    ),
  );
}

Widget faqColumn(BuildContext context, Map<String, String> faq) {
  return Column(
    children: faq.entries
        .map(
          (e) => CardFaq(e.key, e.value),
        )
        .toList(),
  );
}

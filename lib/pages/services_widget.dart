import 'package:flutter/material.dart';
import 'package:shop_layout_2/widgets/page_widget.dart';

Widget servicesWidget(BuildContext context) {
  return pageWidget(
    context,
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Our Services', style: Theme.of(context).textTheme.titleLarge),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Physical Services'),
            Text(' | '),
            Text('Digital Services'),
          ],
        ),
      ],
    ),
  );
}

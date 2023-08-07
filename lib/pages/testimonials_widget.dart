import 'package:flutter/material.dart';
import 'package:shop_layout_2/utils/consts.dart';
import 'package:shop_layout_2/widgets/card_widget.dart';
import 'package:shop_layout_2/widgets/page_widget.dart';

Widget testimonialsWidget(BuildContext context) {
  return pageWidget(
    context,
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Our testimonials',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        ...testimonials.entries
            .map(
              (e) => cardTestimonial(context, e.key, e.value),
            )
            .toList(),
      ],
    ),
  );
}

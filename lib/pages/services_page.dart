import 'package:flutter/material.dart';
import 'package:shop_layout_2/widgets/button_test_widget.dart';
import 'package:shop_layout_2/widgets/card_widget.dart';
import '/utils/global_vars.dart';
import '/widgets/page_widget.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IntrinsicWidth(
            child: cardGeneral(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Our Services',
                      style: Theme.of(context).textTheme.titleLarge),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          scrollToSection(4);
                        },
                        child: const ButtonTextW('Digital Services'),
                      ),
                      const Text(' | '),
                      TextButton(
                        onPressed: () {
                          scrollToSection(5);
                        },
                        child: const ButtonTextW('Physical Services'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_layout_2/utils/global_vars.dart';
import '/widgets/page_widget.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Our Services', style: Theme.of(context).textTheme.titleLarge),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  scrollToSection(4);
                },
                child: const Text('Digital Services'),
              ),
              const Text(' | '),
              TextButton(
                onPressed: () {
                  scrollToSection(5);
                },
                child: const Text('Physical Services'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

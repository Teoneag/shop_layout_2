import 'package:flutter/material.dart';
import '/utils/consts.dart';

class AppBar1 extends StatelessWidget implements PreferredSizeWidget {
  final Function(double) scrollToSection;
  const AppBar1(this.scrollToSection, {super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    double scrollHeight = pageHeight(context) + spaceBetweenPages;
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text(appName),
      actions: [
        TextButton(
          child: const Text('HOME'),
          onPressed: () => scrollToSection(0),
        ),
        TextButton(
          child: const Text('FEATURES'),
          onPressed: () => scrollToSection(scrollHeight * 1),
        ),
        TextButton(
          child: const Text('SERVICES'),
          onPressed: () => scrollToSection(scrollHeight * 2),
        ),
        TextButton(
          child: const Text('FAQ'),
          onPressed: () => scrollToSection(scrollHeight * 3),
        ),
        TextButton(
          child: const Text('PRICES'),
          onPressed: () => scrollToSection(scrollHeight * 4),
        ),
        TextButton(
          child: const Text('TESTIMONIALS'),
          onPressed: () => scrollToSection(scrollHeight * 6),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.07,
        ),
      ],
    );
  }
}

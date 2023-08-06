import 'package:flutter/material.dart';
import '/utils/consts.dart';

class AppBar1 extends StatelessWidget implements PreferredSizeWidget {
  const AppBar1({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text(appName),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('HOME'),
        ),
        TextButton(
          child: const Text('FEATURES'),
          onPressed: () {},
        ),
        TextButton(
          onPressed: () {},
          child: const Text('SERVICES'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('FAQ'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('PRICES'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('TESTIMONIALS'),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.07,
        ),
      ],
    );
  }
}

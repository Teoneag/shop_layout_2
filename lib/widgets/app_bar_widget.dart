import 'package:flutter/material.dart';
import '/utils/strings.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final void Function(int) selectOption;
  const AppBarWidget(this.selectOption, {super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    // TODO make appbar taller
    return AppBar(
      // TODO make a beautifull appbar
      // backgroundColor: // TODO: keep this?
      //     Theme.of(context).colorScheme.inversePrimary.withOpacity(0.5),
      title: TextButton(
        onPressed: () => selectOption(0),
        child: Text(
          appName,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      actions: [
        ...pages.keys
            .map(
              (pageName) => TextButton(
                child: Text(
                  pageName,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                onPressed: () => selectOption(
                  pages.keys.toList().indexOf(pageName),
                ),
              ),
            )
            .toList(),
        // TODO remove this and debug banner
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.07,
        ),
      ],
    );
  }
}

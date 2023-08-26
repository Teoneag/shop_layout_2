import 'package:flutter/material.dart';
import '/utils/global_vars.dart';
import '/utils/routes.dart';
import '/widgets/card_widget.dart';
import '/widgets/page_widget.dart';
import '/utils/consts.dart';

Widget homePage(BuildContext context) {
  return pageWidget(
    context,
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to $appName, The Most Friendly Store',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 15),
            const Text("We're selling physical and digital products"),
            const SizedBox(height: 15),
            cardCheck('Option 1'),
            cardCheck('Option 2'),
            cardCheck('Option 3'),
            cardCheck('Option 4'),
            cardCheck('Option 5'),
          ],
        ),
        cardGeneral(
          child: IntrinsicHeight(
            child: Column(
              children: [
                // TODO make this one be one of the packages
                Text(
                  'Most popular',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 15),
                Text(
                  'GOLD 4 CC PACK',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 15),
                Text(
                  '\$269',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(height: 15),
                Text(
                  'Each product limit > \$2500',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 5),
                const Text('Use via ... guide'),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    selectedOptionNr = 3;
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        Routes.buyPhysical1, (route) => false);
                  },
                  child: const Text('PURCHASE'),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

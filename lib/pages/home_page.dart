import 'package:flutter/material.dart';
import '/utils/global_vars.dart';
import '/utils/routes.dart';
import '/widgets/card_widget.dart';
import '/widgets/page_widget.dart';
import '../utils/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
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
              ...homeBenefits.map((e) => cardCheck(e)).toList(),
            ],
          ),
          cardGeneral(
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Text(
                    'Most popular',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    '${packages[3]![0]} ${packages[3]![3]} ${item}s PACK',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    '\$${packages[3]![1]}',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Each $item limit > \$${packages[3]![2]}',
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
}

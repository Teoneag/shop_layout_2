import 'package:flutter/material.dart';
import 'package:shop_layout_2/utils/consts.dart';
import 'package:shop_layout_2/widgets/checked_text.dart';
import '/widgets/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // TODO hide debug
      // TODO make dark theme
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBar1(),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to $appName, The Most Friendly Store',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Text("We're selling physical and digital products"),
                      checkedText('Option 1'),
                      checkedText('Option 2'),
                      checkedText('Option 3'),
                      checkedText('Option 4'),
                      checkedText('Option 5'),
                    ],
                  ),
                  Card(
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 70,
                      ),
                      child: Column(
                        children: [
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
                            onPressed: () {},
                            child: const Text('PURCHASE'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '/utils/consts.dart';

class ProgressBar extends StatelessWidget {
  final int stepValue;

  const ProgressBar(this.stepValue, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            'Order progress',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 15),
          LinearProgressIndicator(value: 1 / 3 * stepValue),
          const SizedBox(height: 15),
          Text(orderSteps[stepValue - 1]),
        ],
      ),
    );
  }
}

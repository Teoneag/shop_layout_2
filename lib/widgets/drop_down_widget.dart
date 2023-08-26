import 'package:flutter/material.dart';
import '/utils/utils.dart';

class DropDown1 extends StatelessWidget {
  final String text;
  final List<String> items;
  final IntW selectedI;
  final StateSetter setState;

  const DropDown1(
    this.text,
    this.items,
    this.selectedI,
    this.setState, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        DropdownButton(
          value: selectedI.v,
          items: items
              .map((e) => DropdownMenuItem(
                    value: items.indexOf(e),
                    child: Text(e),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedI.v = value as int;
            });
          },
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

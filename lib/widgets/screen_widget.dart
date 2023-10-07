import 'package:flutter/material.dart';
import '/widgets/scaffold_widget.dart';
import '/utils/strings.dart';

class ScreenWidget extends StatelessWidget {
  final List<Widget> children;
  final ScrollController? scrollC;
  final void Function(int)? selectOption;

  const ScreenWidget(this.children,
      {this.scrollC, this.selectOption, super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      SingleChildScrollView(
        controller: scrollC,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              ...children,
              const SizedBox(height: 30),
              const Text('Contact us at example@gmail.com'),
              const Text('© 2023 $appName Store. All Rights Reserved.'),
            ],
          ),
        ),
      ),
      selectOption: selectOption,
    );
  }
}

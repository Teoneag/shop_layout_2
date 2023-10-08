import 'package:flutter/material.dart';
import 'package:shop_layout_2/utils/strings.dart';
import '/utils/global_vars.dart';
import '/widgets/progress_bar_widget.dart';
import '/widgets/scaffold_widget.dart';

class Screen2ColumnsWidget extends StatelessWidget {
  final List<Widget> children1;
  final List<Widget> children2;
  const Screen2ColumnsWidget(this.children1, this.children2, {super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    ...children1,
                    const SizedBox(height: 30),
                    const Text('Contact us at example@gmail.com'),
                    const Text('© 2023 $appName Store. All Rights Reserved.')
                  ],
                ),
              ),
            ),
          ),
          const VerticalDivider(width: 5),
          Expanded(
            child: Column(
              children: [
                ProgressBar(purchaseM.stepValue.v),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: children2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

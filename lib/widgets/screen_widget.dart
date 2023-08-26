import 'package:flutter/material.dart';
import '/utils/global_vars.dart';
import '/utils/routes.dart';
import '../utils/strings.dart';
import '/widgets/app_bar_widget.dart';

class ScreenWidget extends StatelessWidget {
  final List<Widget> children;
  final ScrollController? scrollC;
  final void Function(int)? selectOption;

  const ScreenWidget(this.children,
      {this.scrollC, this.selectOption, super.key});

  void _selectOption(BuildContext context, int i) {
    homeI = i;
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.home, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(selectOption ?? (i) => _selectOption(context, i)),
      body: SingleChildScrollView(
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
    );
  }
}

import 'package:flutter/material.dart';
import '/utils/global_vars.dart';
import '/utils/routes.dart';
import '/widgets/app_bar_widget.dart';

class ScaffoldWidget extends StatelessWidget {
  final Widget child;
  final void Function(int)? selectOption;

  const ScaffoldWidget(this.selectOption, this.child, {super.key});

  void _selectOption(BuildContext context, int i) {
    homeI = i;
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.home, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg_3.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarWidget(
            selectOption ?? (i) => _selectOption(context, i),
          ),
          body: child,
        ),
      ],
    );
  }
}

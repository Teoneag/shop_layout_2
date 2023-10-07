import 'package:flutter/material.dart';
import '/utils/theme.dart';

class PageWidget extends StatelessWidget {
  final Widget child;

  const PageWidget(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: pageHeight(context),
      child: child,
    );
  }
}

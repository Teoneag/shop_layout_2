import 'package:flutter/material.dart';
import '/utils/consts.dart';

Widget pageWidget(BuildContext context, Widget child) {
  return SizedBox(
    height: pageHeight(context),
    child: child,
  );
}

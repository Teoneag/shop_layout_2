import 'package:flutter/material.dart';
import '/utils/consts.dart';

Widget pageWidget(BuildContext context, Widget child) {
  return Container(
    // color: Colors.red,
    height: pageHeight(context),
    child: child,
  );
}

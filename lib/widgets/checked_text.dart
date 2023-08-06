import 'package:flutter/material.dart';

Widget checkedText(String text) {
  return Row(
    children: [
      const Icon(Icons.check),
      Text(text),
    ],
  );
}

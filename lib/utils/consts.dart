import 'package:flutter/material.dart';

const spaceBetweenPages = 50.0;

const pagePadding = 40.0;

double pageHeight(BuildContext context) {
  return MediaQuery.of(context).size.height - kToolbarHeight;
}

const TextStyle urlStyle = TextStyle(
  color: Colors.blue,
  decoration: TextDecoration.underline,
);

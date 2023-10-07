import 'package:flutter/material.dart';

const spaceBetweenPages = 50.0;

// const pagePadding = 40.0;

double pageHeight(BuildContext context) {
  return MediaQuery.of(context).size.height - kToolbarHeight;
}

ThemeData theme1(BuildContext context) {
  int screenWidth = MediaQuery.of(context).size.width.toInt();
  Color primaryColor = Colors.white;

  return ThemeData.dark().copyWith(
    useMaterial3: true,
    primaryColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      errorStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Colors.red,
          ),
    ),
    textTheme: TextTheme(
      displayLarge: Theme.of(context).textTheme.displayLarge!.copyWith(
            fontSize: screenWidth * 0.05,
            color: primaryColor,
          ),
      displayMedium: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontSize: screenWidth * 0.04,
            color: primaryColor,
          ),
      displaySmall: Theme.of(context).textTheme.displaySmall!.copyWith(
            fontSize: screenWidth * 0.03,
            color: primaryColor,
          ),
      headlineLarge: Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontSize: screenWidth * 0.025,
            color: primaryColor,
          ),
      headlineMedium: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontSize: screenWidth * 0.015,
            color: primaryColor,
          ),
      headlineSmall: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: screenWidth * 0.03,
            color: primaryColor,
          ),
      titleLarge: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: screenWidth * 0.02,
            color: primaryColor,
          ),
      titleMedium: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: screenWidth * 0.01,
            color: primaryColor,
          ),
      titleSmall: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: screenWidth * 0.01,
          ),
      bodyLarge: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: screenWidth * 0.015,
          ),
      bodyMedium: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: screenWidth * 0.01,
            color: primaryColor,
          ),
      bodySmall: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: screenWidth * 0.005,
          ),
    ),
  );
}

TextStyle linkStyle(BuildContext context) {
  return Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      );
}

TextStyle importantStyle(BuildContext context) {
  return Theme.of(context).textTheme.bodyLarge!.copyWith(
        color: Colors.red,
      );
}

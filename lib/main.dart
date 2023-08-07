import 'package:flutter/material.dart';
import 'package:shop_layout_2/utils/routes.dart';
import '/pages/faq_widget.dart';
import '/pages/features_widget.dart';
import '/pages/home_widget.dart';
import '/pages/prices_widget.dart';
import '/pages/services_widget.dart';
import '/pages/testimonials_widget.dart';
import '/utils/consts.dart';
import '/widgets/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // TODO hide debug
      // TODO make dark theme
      onGenerateRoute: generateLocalRoutes,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scrollC = ScrollController();

  void _scrollToSection(double offset) {
    _scrollC.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(_scrollToSection),
      body: SingleChildScrollView(
        controller: _scrollC,
        child: Column(
          children: [
            homeWidget(context),
            const SizedBox(height: spaceBetweenPages),
            featuresWidget(context),
            const SizedBox(height: spaceBetweenPages),
            servicesWidget(context),
            const SizedBox(height: spaceBetweenPages),
            faqWidget(context),
            const SizedBox(height: spaceBetweenPages),
            pricesWidget(context, 0, 'Digital'),
            const SizedBox(height: spaceBetweenPages),
            pricesWidget(context, 3, 'Physical'),
            const SizedBox(height: spaceBetweenPages),
            testimonialsWidget(context),
            const SizedBox(height: spaceBetweenPages),
            const Text('© 2023 $appName Store. All Rights Reserved.'),
            const SizedBox(height: spaceBetweenPages),
          ],
        ),
      ),
    );
  }
}

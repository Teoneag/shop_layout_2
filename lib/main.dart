import 'package:flutter/material.dart';
import '/utils/routes.dart';
import '/pages/faq_widget.dart';
import '/pages/features_widget.dart';
import '/pages/home_widget.dart';
import '/pages/prices_widget.dart';
import '/pages/services_widget.dart';
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
  final int? section;
  const MyHomePage({this.section, super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scrollC = ScrollController();

  void _scrollToSection(int section) {
    _scrollC.animateTo(
      section * (pageHeight(context) + spaceBetweenPages),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.section != null) {
        _scrollToSection(widget.section!);
      }
    });
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
            // testimonialsWidget(context),
            const SizedBox(height: spaceBetweenPages),
            const Text('Contact us at example@gmail.com'),
            const Text('© 2023 $appName Store. All Rights Reserved.'),
            const SizedBox(height: spaceBetweenPages),
          ],
        ),
      ),
    );
  }
}

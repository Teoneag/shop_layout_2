import 'package:flutter/material.dart';
import '/utils/theme.dart';
import '/widgets/screen_widget.dart';
import '/utils/routes.dart';
import 'utils/strings.dart';
import 'utils/global_vars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: theme1(context),
      // TODO hide debug
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
    scrollToSection = _scrollToSection;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollC.jumpTo(homeI * (pageHeight(context) + spaceBetweenPages));
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      pages.entries
          .map(
            (entry) => Column(
              children: [
                entry.value,
                const SizedBox(height: spaceBetweenPages),
              ],
            ),
          )
          .toList(),
      scrollC: _scrollC,
      selectOption: _scrollToSection,
    );
  }
}

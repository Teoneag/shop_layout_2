import 'package:flutter/material.dart';
import 'utils/consts.dart';
import '/widgets/screen_widget.dart';
import '/utils/routes.dart';
import 'utils/strings.dart';
import 'utils/global_vars.dart';

void main() {
  runApp(const MyApp());
}

// TODO add continue shopping + always remember all the choices + be able to change everything
// TODO make it for phone as well
// TODO make verification for zipcode, autocomplete street
// TODO be able to type when chosing the country

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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

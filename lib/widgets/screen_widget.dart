import 'package:flutter/material.dart';
import '/utils/consts.dart';
import '/utils/routes.dart';
import '/widgets/app_bar_widget.dart';

class ScreenWidget extends StatelessWidget {
  final List<Widget> children;
  final void Function(int section)? selectSection;
  final ScrollController? scrollController;

  const ScreenWidget(this.children,
      {this.scrollController, this.selectSection, super.key});

  @override
  Widget build(BuildContext context) {
    void pushHome(int section) {
      Navigator.of(context).pushNamedAndRemoveUntil(
          Routes.home, (route) => false,
          arguments: section);
    }

    return Scaffold(
      appBar: AppBar1(selectSection ?? pushHome),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              ...children,
              const SizedBox(height: 30),
              const Text('Contact us at example@gmail.com'),
              const Text('© 2023 $appName Store. All Rights Reserved.'),
            ],
          ),
        ),
      ),
    );
  }
}

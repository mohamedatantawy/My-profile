import 'package:flutter/material.dart';

class Adaptiveui extends StatelessWidget {
  const Adaptiveui({super.key, required this.mobile, required this.desktob});
  final WidgetBuilder mobile, desktob;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <650) {
          return mobile(context);
        } else {
          return desktob(context);
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:profile/adaptiveUI.dart';
import 'package:profile/core/ResponsiveUI/desktoblayout.dart';
import 'package:profile/core/ResponsiveUI/moblielayout.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Adaptiveui(
      mobile: (context) => Moblielayout(),

      desktob: (context) => Desktoblayout(),
    );
  }
}

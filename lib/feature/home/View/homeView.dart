import 'package:flutter/material.dart';
import 'package:profile/adaptiveUI.dart';
import 'package:profile/feature/home/View/widget/desktoblayout.dart';
import 'package:profile/feature/home/View/widget/moblielayout.dart';

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

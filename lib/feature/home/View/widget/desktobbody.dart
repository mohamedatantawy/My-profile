import 'package:flutter/material.dart';
import 'package:profile/feature/home/View/widget/homeviewbody.dart';
import 'package:profile/feature/home/View/widget/serviecesView.dart';

class Desktobbody extends StatelessWidget {
  const Desktobbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Homeviewbody(), Serviecesview()]);
  }
}

import 'package:flutter/material.dart';
import 'package:profile/core/utils/styles.dart';
import 'package:profile/feature/home/View/widget/desktobbody.dart';
import 'package:profile/feature/home/View/widget/serviecesView.dart';

class Desktoblayout extends StatefulWidget {
  const Desktoblayout({super.key});

  @override
  State<Desktoblayout> createState() => _DesktoblayoutState();
}

class _DesktoblayoutState extends State<Desktoblayout> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(double offset) {
    _scrollController.animateTo(
      offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0C0F1C),
        title: Text('data', style: Styles.font22),
        actions: [
          TextButton(
            onPressed: () {
              return _scrollToSection(0);
            },
            child: Text('Home'),
          ),
          TextButton(
            onPressed: () {
              _scrollToSection(700.0);
              //  Serviecesview();
            },
            child: Text('Services'),
          ),
          TextButton(
            onPressed: () {
              return _scrollToSection(1000.0);
            },
            child: Text('Project'),
          ),
          TextButton(onPressed: () {}, child: Text('Skills')),
        ],
      ),
      backgroundColor: Color(0xff0C0F1C),
      body: SingleChildScrollView(
        controller: _scrollController,

        child: Desktobbody(),
      ),
    );
  }
}

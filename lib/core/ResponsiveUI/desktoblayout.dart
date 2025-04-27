import 'package:flutter/material.dart';
import 'package:profile/core/utils/styles.dart';
import 'package:profile/core/ResponsiveUI/desktobbody.dart';
import 'package:profile/feature/darwer/view/darwerView.dart';
import 'package:profile/feature/projects/views/ProjectView.dart';
import 'package:profile/feature/skills/view/skillsView.dart';

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
      drawer: Darwerview(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Center(
                child: Icon(Icons.menu, size: 40, color: Colors.blueAccent),
              ),
            );
          },
        ),

        backgroundColor: Color(0xff0C0F1C),
        title: Text(
          'Mohamed Tantawy',
          style: Styles.font22.copyWith(color: Colors.blueAccent),
        ),
        actions: [
          TextButton(
            onPressed: () {
              return _scrollToSection(0);
            },
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.blue,
                    Colors.blue,
                    Colors.pink,
                  ], // Gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: Text(
                'Home',
                style: Styles.font18.copyWith(color: Colors.white),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              _scrollToSection(700.0);
              //  Serviecesview();
            },
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.blue,
                    Colors.pink,
                  ], // Gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: Text(
                'Projects',
                style: Styles.font18.copyWith(color: Colors.white),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              return _scrollToSection(1400.0);
            },
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.pink,
                    Colors.pink,
                  ], // Gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: Text(
                'Centificate',
                style: Styles.font18.copyWith(color: Colors.white),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return Skillsview();
                  },
                ),
              );
            },
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.pink,
                    Colors.pink,
                    Colors.pink,
                  ], // Gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: Text(
                'Skills',
                style: Styles.font18.copyWith(color: Colors.white),
              ),
            ),
          ),
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

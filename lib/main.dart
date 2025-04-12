import 'package:flutter/material.dart';
import 'package:profile/adaptiveUI.dart';
import 'package:profile/feature/home/View/homeView.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homeview());
  }
}

import 'package:flutter/material.dart';
import 'package:profile/feature/certificate/view/certificateView.dart';
import 'package:profile/feature/home/View/widget/homeviewbody.dart';
import 'package:profile/feature/projects/views/ProjectView.dart';
import 'package:profile/feature/skills/view/skillsView.dart';

class Desktobbody extends StatelessWidget {
  const Desktobbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Homeviewbody(),
        Projectview(),
       Certificateview(),
       // Skillsview(),
      ],
    );
  }
}

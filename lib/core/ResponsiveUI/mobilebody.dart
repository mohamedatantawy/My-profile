import 'package:flutter/material.dart';
import 'package:profile/feature/certificate/view/certificateView.dart';
import 'package:profile/feature/home/View/widget/homeViewModils.dart';
import 'package:profile/feature/projects/views/ProjectView.dart';
class Mobilebody extends StatelessWidget {
  const Mobilebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Homeviewmodils(),
        Projectview(),
       Certificateview(),
      
      ],
    );
  }
}
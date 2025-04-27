import 'package:flutter/material.dart';
import 'package:profile/core/utils/styles.dart';
import 'package:profile/feature/projects/models/projectmodels.dart';
import 'package:profile/feature/projects/views/widget/CustomprojectsItems.dart';

class Certificateview extends StatelessWidget {
  const Certificateview({super.key});
  final List<Projectmodels> items = const [
    Projectmodels(
      nameproject: "Flutter course On Udemy",
      details:
          "I am happy to finish this course and ,I was learned from this course the basics of flutter and creating many mobile program",
      link:
          "https://www.udemy.com/certificate/UC-ec36c5c3-1f4e-483b-b8b1-e6e10e1b6eed/",
    ),
    Projectmodels(
      nameproject: "ITI",
      details:
          "I learn in this traning dart and flutter and MVVM and bloc and i build many project on my github you can see this ,Enter see it .",
      link: "https://github.com/mohamedatantawy/ITI-Flutter-texte",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: ListView(
        children: [
          SizedBox(height: 80),
          Align(
            alignment: Alignment.center,
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [Colors.blue, Colors.purple], // Gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: Text('Licenses & certifications', style: Styles.font28),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    MediaQuery.sizeOf(context).width > 1300
                        ? 4
                        : MediaQuery.sizeOf(context).width > 900
                        ? 3
                        : 2,
                childAspectRatio: 1.4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                // Get the item at the current index
                //  return Container(color: Colors.amber);
                return CustomprojectsItems(projectmodels: items[index]);
              },
            ),
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}

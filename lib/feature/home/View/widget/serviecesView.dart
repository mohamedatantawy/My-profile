import 'package:flutter/material.dart';
import 'package:profile/core/utils/colors.dart';
import 'package:profile/core/utils/styles.dart';

class Serviecesview extends StatelessWidget {
  const Serviecesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [Colors.blue, Colors.purple], // Gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          child: Text('Projects', style: Styles.font22),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 1000,
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.sizeOf(context).width > 900 ? 4 : 2,
              childAspectRatio: 1.4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 0), //
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.4), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 8, // Blur radius
                      offset: Offset(-3, 0), // Shadow offset
                    ),
                    BoxShadow(
                      color: Colors.brown.withOpacity(0.6), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset: Offset(4, -3),
                    ),
                  ],
                  // gradient: LinearGradient(
                  //   begin: Alignment.centerLeft,
                  //   end: Alignment.centerRight,
                  //   colors: [Colors.blue, Colors.cyanAccent],
                  // ),
                ),
                child: Card(
                  // margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  borderOnForeground: true,
                  // shadowColor: Colors.amber,
                  surfaceTintColor: Colors.blue,

                  elevation: 0.8,
                  color: kprimaycolor,
                  child: Column(
                    children: [
                      Text('BooklyApp', style: Styles.font22),
                      Text(
                        'to read the free books and show many book in different field',
                        style: Styles.font18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Go to The Resoure', style: Styles.font16),
                          Text('-->', style: Styles.font16),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

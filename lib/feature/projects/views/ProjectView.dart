import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:profile/core/utils/colors.dart';
import 'package:profile/core/utils/styles.dart';
import 'package:profile/feature/projects/models/projectmodels.dart';
import 'package:profile/feature/projects/views/widget/CustomprojectsItems.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Projectview extends StatefulWidget {
  const Projectview({super.key});

  @override
  State<Projectview> createState() => _ProjectviewState();
}

class _ProjectviewState extends State<Projectview>
    with TickerProviderStateMixin {
  bool visible = false;
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
    );
    animation = Tween<Offset>(
      begin: Offset(0.0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeIn),
    );
    super.initState();
  }

  void onvisiblechange(VisibilityInfo info) {
    if (info.visibleFraction > 0.5 && !visible) {
      animationController.forward();
      setState(() {
        visible = true;
      });
    }
  }

  final List<Projectmodels> projectitems = const [
    Projectmodels(
      nameproject: 'E-commerce',
      details:
          'This app use technology Flutter  and dart and clean architecture and MVVM ,you can use this app to buy any things and use categories to search your product you need and  , i use firebase to create account and login by authentication and forget password and reset password and , i use API for show the products in home View and this App support dark theme and light theme and save this change ',
      //and use firebase to show person information  in profile screen and the user can log out elso ,and you can put your favorite products and add your product you need to buy and change any product you not  need from delete icon
      link: 'https://github.com/mohamedatantawy/E-commerce',
    ),
    Projectmodels(
      nameproject: 'NoteApp',
      details:
          'This app use technology Flutter and dart , you can use this app to add notes and edit this note and use this project in your mobile ',
      link: 'https://github.com/mohamedatantawy/notes-app',
    ),
    Projectmodels(
      nameproject: 'BooklyApp',
      details:
          'This app use technology Flutter and dart and use Clean architecture ,you can use this app to read any book for free in your mobile ',
      link: 'https://github.com/mohamedatantawy/BookApp',
    ),
    Projectmodels(
      nameproject: 'QuizApp ',
      details:
          'This app use technology Flutter  and dart and use MVVM ,you can use this app to Add material and add any Question and answer for this Question in your mobile ',
      link: 'https://github.com/mohamedatantawy/QuizApp',
    ),

    Projectmodels(
      nameproject: 'WeatherApp',
      details:
          'This app use technology Flutter  and dart, you can use this app Know your weather  And any place in your mobile ',
      link: 'https://github.com/mohamedatantawy/weather-app4',
    ),
    Projectmodels(
      nameproject: 'CounterApp',
      details:
          'This app use technology Flutter  and dart ,you can use this app counter and show this counter  in your mobile  ',
      link: 'https://github.com/mohamedatantawy/CounterApp',
    ),
    Projectmodels(
      nameproject: 'Calculater',
      details:
          'This app use technology Flutter  and dart ,you can use this app to calcutate anything in your mobile  ',
      link: 'https://github.com/mohamedatantawy/calculator-',
    ),

    // // replay
    // Projectmodels(
    //   nameproject: 'E-commerce',
    //   details:
    //       'This app use technology Flutter  and dart and clean architecture and MVVM ,you can use this app to buy any things and use categories to search your product you need and  , i use firebase to create account and login by authentication and forget password and reset password and , i use API for show the products in home View and this App support dark theme and light theme and save this change ',
    //   //and use firebase to show person information  in profile screen and the user can log out elso ,and you can put your favorite products and add your product you need to buy and change any product you not  need from delete icon
    //   link: 'https://github.com/mohamedatantawy/E-commerce',
    // ),
    // Projectmodels(
    //   nameproject: 'NoteApp',
    //   details:
    //       'This app use technology Flutter and dart , you can use this app to add notes and edit this note and use this project in your mobile ',
    //   link: 'https://github.com/mohamedatantawy/notes-app',
    // ),
    // Projectmodels(
    //   nameproject: 'BooklyApp',
    //   details:
    //       'This app use technology Flutter and dart and use Clean architecture ,you can use this app to read any book for free in your mobile ',
    //   link: 'https://github.com/mohamedatantawy/BookApp',
    // ),
    // Projectmodels(
    //   nameproject: 'QuizApp ',
    //   details:
    //       'This app use technology Flutter  and dart and use MVVM ,you can use this app to Add material and add any Question and answer for this Question in your mobile ',
    //   link: 'https://github.com/mohamedatantawy/QuizApp',
    // ),

    // Projectmodels(
    //   nameproject: 'WeatherApp',
    //   details:
    //       'This app use technology Flutter  and dart, you can use this app Know your weather  And any place in your mobile ',
    //   link: 'https://github.com/mohamedatantawy/weather-app4',
    // ),
    // Projectmodels(
    //   nameproject: 'CounterApp',
    //   details:
    //       'This app use technology Flutter  and dart ,you can use this app counter and show this counter  in your mobile  ',
    //   link: 'https://github.com/mohamedatantawy/CounterApp',
    // ),
    // Projectmodels(
    //   nameproject: 'Calculater',
    //   details:
    //       'This app use technology Flutter  and dart ,you can use this app to calcutate anything in your mobile  ',
    //   link: 'https://github.com/mohamedatantawy/calculator-',
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: VisibilityDetector(
        key: Key("Projects"),
        onVisibilityChanged: onvisiblechange,
        child: SlideTransition(
          position: animation,
          child: Opacity(
            opacity: visible ? 1 : 0,
            child: Column(
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
                    child: Text('Projects', style: Styles.font28),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 600,

                  child: GridView.builder(
                    itemCount: projectitems.length,
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
                      return CustomprojectsItems(
                        projectmodels: projectitems[index],
                      );
                    },
                  ),
                ),

                //  SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

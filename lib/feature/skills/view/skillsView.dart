import 'package:flutter/material.dart';
import 'package:profile/core/ResponsiveUI/desktobbody.dart';
import 'package:profile/core/ResponsiveUI/desktoblayout.dart';
import 'package:profile/core/utils/colors.dart';
import 'package:profile/core/utils/styles.dart';
import 'package:profile/feature/darwer/view/darwerView.dart';
import 'package:profile/feature/skills/models/skillsmodels.dart';

class Skillsview extends StatefulWidget {
  const Skillsview({super.key});

  @override
  State<Skillsview> createState() => _SkillsviewState();
}

class _SkillsviewState extends State<Skillsview> {
  final List<Skillsmodels> items = const [
    Skillsmodels(name: 'Flutter', present: 95),
    Skillsmodels(name: 'Dart', present: 90),
    Skillsmodels(name: 'OOP', present: 88),
    Skillsmodels(name: 'Firebase', present: 92),
    Skillsmodels(name: 'Supabase', present: 90),
    Skillsmodels(name: 'Firebase Cloud', present: 88),
    Skillsmodels(name: 'API REST', present: 91),
    Skillsmodels(name: 'SQLite', present: 88),
    Skillsmodels(name: 'Hive', present: 95),
    Skillsmodels(name: 'Responsive UI', present: 85),
    Skillsmodels(name: 'MVVM', present: 95),
    Skillsmodels(name: 'Clean Architacture', present: 90),
    Skillsmodels(name: 'Bloc & Cubit', present: 88),
    Skillsmodels(name: 'C++', present: 90),
    Skillsmodels(name: 'Problem Solving', present: 80),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kprimaycolor,
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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return Desktoblayout();
                  },
                ),
              );
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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return Desktoblayout();
                  },
                ),
              );
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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return Desktoblayout();
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
      drawer: Darwerview(),
      body: Column(
        children: [
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
              child: Text('Skills', style: Styles.font28),
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 700,
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.sizeOf(context).width > 1300
                          ? 4
                          : MediaQuery.sizeOf(context).width > 900
                          ? 3
                          : 2,
                  childAspectRatio: 5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  // Get the item at the current index
                  return customskillsitems(skillsmodels: items[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class customskillsitems extends StatefulWidget {
  const customskillsitems({super.key, required this.skillsmodels});
  final Skillsmodels skillsmodels;

  @override
  State<customskillsitems> createState() => _customskillsitemsState();
}

class _customskillsitemsState extends State<customskillsitems> {
  bool isactive = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isactive = true;
        });
      },
      onExit: (event) {
        setState(() {
          isactive = false;
        });
      },
      child: ListTile(
        title: ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [
                Colors.blue,
                Colors.purple,
                Colors.purple,
                Colors.purple,
              ], // Gradient colors
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds);
          },
          child: Text(widget.skillsmodels.name, style: Styles.font20),
        ),
        subtitle: tomveanimation(
          isactive: isactive,
          skillsmodels: widget.skillsmodels,
        ),
        trailing: Text(
          "${widget.skillsmodels.present} %",
          style: Styles.font16,
        ),
      ),
    );
  }
}

class tomveanimation extends StatefulWidget {
  const tomveanimation({
    super.key,
    required this.skillsmodels,
    required this.isactive,
  });

  final Skillsmodels skillsmodels;
  final bool isactive;
  @override
  State<tomveanimation> createState() => _tomveanimationState();
}

class _tomveanimationState extends State<tomveanimation>
    with TickerProviderStateMixin {
  // bool isactive = false;
  late AnimationController _controller;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = IntTween(
      end: widget.skillsmodels.present,
      begin: 0,
    ).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      //animation: _controller,
      tween: IntTween(end: widget.skillsmodels.present, begin: 0),
      duration: Duration(seconds: 2),
      builder:
          (context, values, _) => LinearProgressIndicator(
            value: values / 100,
            borderRadius: BorderRadius.circular(12),
            minHeight: 8,
            backgroundColor: Colors.white,
            color: Colors.blue,
          ),
    );
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:profile/core/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class Homeviewmodils extends StatefulWidget {
  const Homeviewmodils({super.key});

  @override
  State<Homeviewmodils> createState() => _HomeviewmodilsState();
}

class _HomeviewmodilsState extends State<Homeviewmodils>
    with SingleTickerProviderStateMixin {
  bool isactive = false;
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true); // Repeat the animation in reverse

    _animation = Tween<double>(begin: -50, end: 50).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, _animation.value), // Move up and down
                child: child,
              );
            },
            child: Image.asset('asset/images/1697273887022.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
          
              Text('Hello!', style: Styles.font28),
              SizedBox(height: 10),
              ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: [Colors.blue, Colors.pink], // Gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                child: Text('Mohamed Tantawy ', style: Styles.font35),
              ),
              Row(
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        speed: Duration(milliseconds: 300),
                        'Flutter',
                        textStyle: Styles.font35,
                      ),
                    ],
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.purple,
                        ], // Gradient colors
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds);
                    },
                    child: Text(' developer ', style: Styles.font35),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () async {
                  Uri uri = Uri.parse(
                    "https://drive.google.com/file/d/12naoOy9kZP9Wdu-CTStnVHK3qh_OGkBr/view",
                  );
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                    //  throw Exception('Could not launch $uri');
                  } else {
                    print('error');
                  }
                },
                child: Container(
                  margin: EdgeInsets.all(12),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.blue.shade900, Colors.pink],
                    ),
                  ),
                  child: Text('Download CV', style: Styles.font16),
                ),
              ),
              SizedBox(height: 80),
            ],
          ),
          
        ],
      ),
    );
    ;
  }
}

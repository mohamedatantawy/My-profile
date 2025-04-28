import 'package:flutter/material.dart';
import 'package:profile/adaptiveUI.dart';
import 'package:profile/core/ResponsiveUI/homeView.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: initapp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Homeview();
          } else {
            return LoadingView();
          }
        },
      ),
    );
  }

  Future<void> initapp() async {
    await Future.delayed(Duration(seconds: 3));
  }
}

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C0F1C),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

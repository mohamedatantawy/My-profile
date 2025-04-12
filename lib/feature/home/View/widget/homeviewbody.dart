import 'package:flutter/material.dart';
import 'package:profile/core/utils/colors.dart';
import 'package:profile/core/utils/styles.dart';

class Homeviewbody extends StatefulWidget {
  const Homeviewbody({super.key});

  @override
  State<Homeviewbody> createState() => _HomeviewbodyState();
}

class _HomeviewbodyState extends State<Homeviewbody>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80),
          Text(
            'Hello,I am Mohamed Tantawy , a mobile Developer with Flutter ',
            style: Styles.font22,
          ),
          SizedBox(height: 10),
          Text('Flutter develper ', style: Styles.font22),
          SizedBox(height: 10),
          Text('I am student in Danmanhour  ', style: Styles.font22),
          SizedBox(height: 10),

          SizedBox(height: 80),
        ],
      ),
    );
  }
}

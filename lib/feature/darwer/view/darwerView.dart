import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile/core/utils/colors.dart';
import 'package:profile/core/utils/launcherUIL.dart';
import 'package:profile/core/utils/styles.dart';
import 'package:profile/feature/darwer/models/drawermodel.dart';
import 'package:url_launcher/url_launcher.dart';

class Darwerview extends StatelessWidget {
  const Darwerview({super.key});
  final List<Drawermodel> items = const [
    Drawermodel(title: 'contact', text: '+201021948916'),
    Drawermodel(title: 'Email', text: 'tantawymo2003@gmail.com'),
    Drawermodel(title: 'Address', text: 'Damanhour-Bahera'),
    Drawermodel(title: 'Linkedin', text: 'mohamed-tantawy-19a95b2a4/'),
    Drawermodel(title: 'Github', text: 'mohamedatantawy'),
  ];
  final List<Drawermodel> itemtwo = const [
    Drawermodel(title: 'contact', text: 'UC,UI,Figma,'),
    Drawermodel(title: 'Email', text: 'Rest API,Postman,apidog'),
    Drawermodel(title: 'Linkedin', text: 'Git,GitHub,'),
    // Drawermodel(title: 'Github', text: ''),
  ];
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.sizeOf(context).width;
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [kprimaycolor, kprimaycolor, Colors.blue.shade900],
        ),
      ),
      width:
          wid > 1100
              ? MediaQuery.sizeOf(context).width * 0.3
              : wid > 800
              ? MediaQuery.sizeOf(context).width * 0.4
              : wid > 800
              ? MediaQuery.sizeOf(context).width * 0.5
              : MediaQuery.sizeOf(context).width * 0.6,
      child: ListView(
        children: [
          SizedBox(height: 15),
          Center(
            child: CircleAvatar(
              radius: 75,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("asset/images/mohamed.jpg"),
              ),
            ),
          ),
          SizedBox(height: 15),
          Center(child: Text('Mohamed Tantawy', style: Styles.font20)),
          SizedBox(height: 7),
          Center(
            child: Text(
              'Flutter Developer & Software Engineer',
              style: Styles.font16,
            ),
          ),
          SizedBox(height: 15),
          Divider(color: Colors.grey),
          SizedBox(height: 7),
          Center(child: Text('Social Media', style: Styles.font20)),
          //    Divider(color: Colors.grey, endIndent: 260),
          SizedBox(height: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: List.generate(items.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(items[index].title, style: Styles.font16),

                    SelectableText(
                      items[index].text,
                      style: Styles.font16.copyWith(color: Colors.blueGrey),
                    ),
                  ],
                ),
              );
            }),
            // children: [
            //   Text('Contact', style: Styles.font20),
            //   Text('+201021948916', style: Styles.font20),
            // ],
          ),

          Divider(color: Colors.grey),
          SizedBox(height: 7),
          Center(child: Text('Knowledge', style: Styles.font20)),
          //    Divider(color: Colors.grey, endIndent: 260),
          SizedBox(height: 15),
          Column(
            children: List.generate(itemtwo.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.check, color: Colors.amber, size: 20),
                    SizedBox(width: 10),
                    Text(
                      itemtwo[index].text,
                      style: Styles.font16.copyWith(color: Colors.blueGrey),
                    ),
                  ],
                ),
              );
            }),
            // children: [
            //   Text('Contact', style: Styles.font20),
            //   Text('+201021948916', style: Styles.font20),
            // ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              launchdd(name: "https://github.com/mohamedatantawy", icon: 1),
              launchdd(
                name: "https://www.linkedin.com/in/mohamed-tantawy-19a95b2a4/",
                icon: 2,
              ),

              //https://www.instagram.com/mohamedtantawy77/profilecard/?igsh=OGU3dnZoOHgzeXZj
              launchdd(
                name:
                    "https://www.facebook.com/profile.php?id=100026634231528&mibextid=ZbWKwL",
                icon: 3,
              ),
              launchdd(
                name:
                    "https://www.instagram.com/mohamedtantawy77/profilecard/?igsh=OGU3dnZoOHgzeXZj",
                icon: 4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

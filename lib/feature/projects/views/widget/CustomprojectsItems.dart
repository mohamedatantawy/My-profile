import 'package:flutter/material.dart';
import 'package:profile/core/utils/colors.dart';
import 'package:profile/core/utils/styles.dart';
import 'package:profile/feature/projects/models/projectmodels.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomprojectsItems extends StatefulWidget {
  const CustomprojectsItems({super.key, required this.projectmodels});
  final Projectmodels projectmodels;
  @override
  State<CustomprojectsItems> createState() => _CustomprojectsItemsState();
}

class _CustomprojectsItemsState extends State<CustomprojectsItems> {
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
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        // padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent, width: 0), //
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.7), // Shadow color
              spreadRadius: -2, // Spread radius
              blurRadius: isactive ? 8 : 1, // Blur radius
              offset: Offset(-2, 2), // Shadow offset
            ),
            BoxShadow(
              color: Colors.blue.withOpacity(0.7), // Shadow color
              spreadRadius: -2, // Spread radius
              blurRadius: isactive ? 8 : 1, // Blur radius
              offset: Offset(0, -2), // Shadow offset
            ),
            BoxShadow(
              color: Colors.purple.withOpacity(0.7), // Shadow color
              spreadRadius: -2, // Spread radius
              blurRadius: isactive ? 8 : 2, // Blur radius
              offset: Offset(3, 0),
            ),
          ],
        ),
        child: Card(
          borderOnForeground: true,

          surfaceTintColor: Colors.blue,

          elevation: 0.8,
          color: kprimaycolor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              children: [
                Text(widget.projectmodels.nameproject, style: Styles.font22),
                Expanded(child: SizedBox(height: 4)),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                  child: Text(
                    widget.projectmodels.details,
                    style: Styles.font16,
                    //textAlign: TextAlign.center,
                    maxLines: 4,
                  ),
                ),
                Expanded(child: SizedBox(height: 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () async {
                        Uri uri = Uri.parse(widget.projectmodels.link);
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(uri);
                          //  throw Exception('Could not launch $uri');
                        } else {
                          print('error');
                        }
                      },
                      child: Text('Go to The Resoure', style: Styles.font16),
                    ),
                    // Text('Go to The Resoure', style: Styles.font16),
                    Text('-->', style: Styles.font16),
                  ],
                ),
                Expanded(child: SizedBox(height: 5)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

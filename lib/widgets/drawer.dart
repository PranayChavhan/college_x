import 'package:college_x/constraints.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: const EdgeInsets.only(top: 70.0),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 30)),
          // Image.asset(
          //   "assets/images/onboarding_image_2.png",
          //   width: sizeH * 15,
          // ),
          Text(
            "College_X",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: ColorConstants.kDarkColor),
          )
        ],
      ),
    );
  }
}

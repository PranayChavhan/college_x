import 'package:flutter/material.dart';

import '../constraints.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kLightColor,
      body: Center(
        child: Text("hye Notification page"),
      ),
    );
  }
}

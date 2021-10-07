import 'package:flutter/material.dart';

import '../constraints.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kLightColor,
      body: Center(
        child: Text("hye Notes page"),
      ),
    );
  }
}

import 'package:college_x/constraints.dart';
import 'package:flutter/material.dart';

class AcademicSchedule extends StatefulWidget {
  const AcademicSchedule({Key? key}) : super(key: key);

  @override
  _AcademicScheduleState createState() => _AcademicScheduleState();
}

class _AcademicScheduleState extends State<AcademicSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kLightColor,
      body: Center(
        child: Text("Hye Academic schedule"),
      ),
    );
  }
}

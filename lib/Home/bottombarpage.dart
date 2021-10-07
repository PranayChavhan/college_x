import 'package:college_x/pages/academicschedule.dart';
import 'package:college_x/pages/home.dart';
import 'package:college_x/pages/settings.dart';
import 'package:college_x/pages/subject.dart';
import 'package:college_x/pages/timetable.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../constraints.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  GlobalKey<CurvedNavigationBarState> _Navkey = GlobalKey();

  var PageAll = [
    HomePage(),
    SubjectPage(),
    TimetablePage(),
    AcademicSchedule()
  ];
  var myindex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          key: _Navkey,
          items: [
            Icon((myindex == 0) ? Icons.home_outlined : Icons.home),
            Icon((myindex == 1) ? Icons.subject : Icons.subject_outlined),
            Icon((myindex == 2) ? Icons.event_available : Icons.event),
            Icon((myindex == 3)
                ? Icons.calendar_today
                : Icons.calendar_view_day),
          ],
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          animationCurve: Curves.fastLinearToSlowEaseIn,
          color: Color(0xFFD4E7FE),
          height: sizeH * 15),
      body: PageAll[myindex],
    );
  }
}

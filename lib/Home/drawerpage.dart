import 'package:college_x/Home/bottombarpage.dart';
import 'package:college_x/constraints.dart';
import 'package:college_x/pages/academicschedule.dart';
import 'package:college_x/pages/colleg_online.dart';
import 'package:college_x/pages/notes.dart';
import 'package:college_x/pages/notification.dart';
import 'package:college_x/pages/profile.dart';
import 'package:college_x/pages/results.dart';
import 'package:college_x/pages/send_feedback.dart';
import 'package:college_x/pages/settings.dart';
import 'package:college_x/pages/subject.dart';
import 'package:college_x/pages/timetable.dart';
import 'package:college_x/widgets/drawer.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  var currentPage = DrawerSection.home;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSection.home) {
      container = BottomBar();
    } else if (currentPage == DrawerSection.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSection.results) {
      container = ResultsPage();
    } else if (currentPage == DrawerSection.college_online) {
      container = CollegeOnline();
    } else if (currentPage == DrawerSection.notifications) {
      container = NotificationPage();
    } else if (currentPage == DrawerSection.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSection.send_feedback) {
      container = SendFeedback();
    } else if (currentPage == DrawerSection.profile) {
      container = ProfilePage();
    }
    var title;
    if (currentPage == DrawerSection.home) {
      title = Text(
        "Overview",
        style: HeadingStyle,
      );
    }
    var color;
    if (currentPage == DrawerSection.home) {
      color = Color(0xFFD4E7FE);
    }
    return Scaffold(
      backgroundColor: ColorConstants.kLightColor,
      //------------------------------------------------------------------------AppBar
      appBar: AppBar(
        title: title,
        backgroundColor: color,
      ),

      //------------------------------------------------------------------------BottomBar

      //------------------------------------------------------------------------Body
      body: container,

      //------------------------------------------------------------------------Drawer
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
      ),
    );
  }

//------------------------------------------------------------------------------Drawer_Method
  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Divider(
            color: Colors.grey.shade500,
          ),
          menuItem(1, "Home", Icons.home_outlined,
              currentPage == DrawerSection.home ? true : false),
          menuItem(8, "Profile", Icons.perm_contact_cal,
              currentPage == DrawerSection.profile ? true : false),
          menuItem(2, "Notes", Icons.notes,
              currentPage == DrawerSection.notes ? true : false),
          Divider(
            color: Colors.grey.shade500,
          ),
          menuItem(3, "Results", Icons.privacy_tip_outlined,
              currentPage == DrawerSection.results ? true : false),
          menuItem(4, "College Online", Icons.account_balance,
              currentPage == DrawerSection.college_online ? true : false),
          menuItem(5, "Notification", Icons.notifications_outlined,
              currentPage == DrawerSection.notifications ? true : false),
          Divider(
            color: Colors.grey.shade500,
          ),
          menuItem(6, "Settings", Icons.settings_outlined,
              currentPage == DrawerSection.settings ? true : false),
          menuItem(7, "Send Feedback", Icons.feedback_outlined,
              currentPage == DrawerSection.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Color(0xFFD4E7FE) : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSection.home;
            } else if (id == 2) {
              currentPage = DrawerSection.notes;
            } else if (id == 3) {
              currentPage = DrawerSection.results;
            } else if (id == 4) {
              currentPage = DrawerSection.college_online;
            } else if (id == 5) {
              currentPage = DrawerSection.notifications;
            } else if (id == 6) {
              currentPage = DrawerSection.settings;
            } else if (id == 7) {
              currentPage = DrawerSection.send_feedback;
            } else if (id == 8) {
              currentPage = DrawerSection.profile;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSection {
  home,
  profile,
  notes,
  results,
  college_online,
  notifications,
  settings,
  send_feedback,
}

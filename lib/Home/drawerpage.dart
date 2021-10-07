import 'package:college_x/Home/subject.dart';
import 'package:college_x/constraints.dart';
import 'package:college_x/pages/home.dart';
import 'package:college_x/pages/subject.dart';
import 'package:college_x/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSection.home;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSection.home) {
      container = Home();
    } else if (currentPage == DrawerSection.subject) {
      container = Subject();
    }else if (currentPage == DrawerSection.events) {
      container = SubjectPage();
    }else if (currentPage == DrawerSection.notes) {
      container = SubjectPage();
    }else if (currentPage == DrawerSection.settings) {
      container = SubjectPage();
    }else if (currentPage == DrawerSection.notifications) {
      container = SubjectPage();
    }else if (currentPage == DrawerSection.privacy_policy) {
      container = SubjectPage();
    }else if (currentPage == DrawerSection.send_feedback) {
      container = SubjectPage();
    }
    var title;
    if(currentPage == DrawerSection.home){
      title = Text("Home", style: TextStyle(color: Colors.black),);
    }else if(currentPage == DrawerSection.subject){
      title = Text("Subject", style: TextStyle(color: Colors.black),);
    }
    return Scaffold(
      backgroundColor: ColorConstants.kLightColor,
      appBar: AppBar(
        title: title,
      ),
      body: container,

      //------------------------------------------------------------------------
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

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Home", Icons.dashboard_outlined,
              currentPage == DrawerSection.home ? true : false),
          menuItem(2, "Subjects", Icons.people_alt_outlined,
              currentPage == DrawerSection.subject ? true : false),
          menuItem(3, "Events", Icons.event,
              currentPage == DrawerSection.events ? true : false),
          menuItem(4, "Notes", Icons.notes,
              currentPage == DrawerSection.notes ? true : false),
          menuItem(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSection.settings ? true : false),
          menuItem(6, "Notification", Icons.notifications_outlined,
              currentPage == DrawerSection.notifications ? true : false),
          menuItem(7, "Privacy Policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSection.privacy_policy ? true : false),
          menuItem(8, "Send Feedback", Icons.feedback_outlined,
              currentPage == DrawerSection.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey.shade300 : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSection.home;
            } else if (id == 2) {
              currentPage = DrawerSection.subject;
            } else if (id == 3) {
              currentPage = DrawerSection.events;
            } else if (id == 4) {
              currentPage = DrawerSection.notes;
            } else if (id == 5) {
              currentPage = DrawerSection.settings;
            } else if (id == 6) {
              currentPage = DrawerSection.notifications;
            } else if (id == 7) {
              currentPage = DrawerSection.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSection.send_feedback;
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
  subject,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}

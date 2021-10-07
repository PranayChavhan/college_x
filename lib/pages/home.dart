import 'package:college_x/Home/drawerpage.dart';
import 'package:college_x/constraints.dart';
import 'package:college_x/widgets/drawer.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD4E7FE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 362,
                  margin: EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Today",
                        style: HeadingStyle,
                      ),
                      // SizedBox(width: 220,),
                      Text(DateFormat.yMMMd().format(DateTime.now()),
                      style: subHeadingStyle,
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              child: DatePicker(
                  DateTime.now(),
                  height: 90,
                  width: 60,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.blue.shade200,
                  selectedTextColor: Colors.black,

                  dateTextStyle: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                  ),
                  dayTextStyle: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                  ),
                  monthTextStyle: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                  ),
                onDateChange: (date){
                  _selectedDate = date;
                },
              )
            ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                    // height: MediaQuery.of(context).size.height,
                    // width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: ColorConstants.kLightColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        buildTitleRow("TODAY CLASSES"),
                        SizedBox(
                          height: 20,
                        ),
                        buildClassItem("11:00","PM","Java","Khatri Sir"),
                        buildClassItem("12:00","PM","Operating System","Shirke Mam"),
                        buildClassItem("01:30","PM","IMO","Nikita Sir"),
                        buildClassItem("03:00","PM","Software Engineering","Reheman Sir"),
                        buildClassItem("04:00","PM","Software Testing","Pankaj Sir"),
                        SizedBox(
                          height: 20,
                        ),
                        buildTitleRow("YOUR TASKS"),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              buildTaskItem(3,"The Basic of Typography",Colors.red),
                              buildTaskItem(2,"The Basic of Nanotechnology",Colors.green),
                              buildTaskItem(1,"The Basic of Nanotechnology",Colors.blue),
                              buildTaskItem(0,"The Basic of Nanotechnology",Colors.purple),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        buildTitleRow("TOMORROW CLASSES"),
                      ],
                    ),
                  )


          ],
        ),
      )
    );
  }

  Container buildTaskItem(int numDays, String subjectTitle, Color color) {
    return Container(
      margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.all(12),
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            color: color.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Deadline",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                              ),),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Container(
                                    height: 6,
                                    width: 6,
                                    decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(3)
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("$numDays days left",
                                  style: TextStyle(
                                    fontSize: 12,fontWeight: FontWeight.bold
                                  ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Container(
                                width: 100,
                                child: Text(subjectTitle,
                                  style: TextStyle(
                                      fontSize: 15,fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
  }

  Row buildTitleRow(String title, ) {
    return Row(
                      children: [
                        RichText(
                            text: TextSpan(
                              text: title,
                              style: subHeadingStyle,
                            )
                        )
                      ],
                    );
  }

  Container buildClassItem(String time,String ampm, String sub, String tname) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
                      padding: EdgeInsets.all(10),
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFF9F9FB),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(time,
                              style: timeHeadingStyle,
                              ),
                              Text(ampm,
                                style: subTimeHeadingStyle,
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            width: 1,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                children: [
                                  Icon(Icons.book_outlined,
                                  color: Colors.grey,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width - 160,
                                    child: Text(sub,
                                    overflow: TextOverflow.ellipsis,
                                    style: timeHeadingStyle,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.person,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(tname,
                                    style: timeHeadingStyle,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
  }
}

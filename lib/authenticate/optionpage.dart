import 'package:flutter/material.dart';

import '../constraints.dart';
import 'as_a_student/login.dart';

class OptionPage extends StatefulWidget {
  const OptionPage({Key? key}) : super(key: key);

  @override
  State<OptionPage> createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: ColorConstants.kLightColor,
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Image.asset("assets/images/app_logo.jpg", width: sizeH* 20, height: sizeV * 20,),
                Text("Welcome to College_X",
                style: kTitle,
                ),
                Image.asset("assets/images/onboarding_image_3.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: SizeConfig.blockSizeH! * 15.5,
                    width: SizeConfig.blockSizeH! * 100,
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()
                            )
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_box, color: ColorConstants.kSecondaryColor,),
                          SizedBox(width: sizeH * 2,),
                          Text(
                            "As a Student",
                            style: kBodyTextBold,
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: ColorConstants.kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: sizeV * 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: SizeConfig.blockSizeH! * 15.5,
                    width: SizeConfig.blockSizeH! * 100,
                    child: TextButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_balance, color: ColorConstants.kSecondaryColor,),
                          SizedBox(width: sizeH * 2,),
                          Text(
                            "As a Teacher",
                            style: kBodyTextBold,
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: ColorConstants.kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

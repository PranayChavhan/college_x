import 'package:flutter/material.dart';

import '../constraints.dart';

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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 140),
                      child: Image.asset("assets/images/main_top.png"),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign in",
                    style: kTitle,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 20),
                      child: SizedBox(
                        height: sizeV * 7,
                        child: ElevatedButton.icon(
                            icon: const Icon(
                              Icons.account_box,
                              color: Colors.black,
                              size: 22.0,
                            ),
                            label: const Text('     As a Student     ',style: TextStyle(fontSize: 18,color: Colors.black),),
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0),
                                      // side: const BorderSide(color: Colors.red)
                                    ),
                                )
                            ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 20),
                      child: SizedBox(
                        height: sizeV * 7,
                        child: ElevatedButton.icon(
                            icon: const Icon(
                              Icons.account_balance,
                              color: Colors.black,
                              size: 22.0,
                            ),
                            label: const Text('     As a Teacher     ',style: TextStyle(fontSize: 18,color: Colors.black),),
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0),
                                      // side: const BorderSide(color: Colors.red)
                                    )
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 89, left: 80),
                      child: Image.asset("assets/images/main_bottom.png"),
                    )
                  ],
                ),
              ),
            ],

          ),

        ),
      )
    );
  }
}

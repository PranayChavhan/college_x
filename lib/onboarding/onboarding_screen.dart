import 'package:college_x/authenticate/optionpage.dart';
import 'package:college_x/constraints.dart';
import 'package:college_x/onboarding/onboard_data.dart';
import 'package:college_x/widgets/onboarding_widgets/onboarding_button.dart';
import 'package:college_x/widgets/onboarding_widgets/onboarding_textbutton.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  int currentPage = 0;

  PageController _pageController = PageController(
    initialPage: 0
  );

  AnimatedContainer dotIndicator(index){
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? ColorConstants.kPrimaryColor : ColorConstants.kSecondaryColor,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //initialize size config
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: ColorConstants.kLightColor,
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 9,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (value){
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: onboardingContents.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          SizedBox(
                            height: sizeV * 5,
                          ),
                          Text(
                            onboardingContents[index].title,
                            style: kTitle ,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: sizeV * 5,
                          ),
                          Container(
                            height: sizeV * 50,
                            child: Image.asset(
                              onboardingContents[index].image,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: sizeV * 5,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                              text: TextSpan(
                                style: kBodyTextBold,
                                children: [
                                  TextSpan(text: "WE CAN "),
                                  TextSpan(text: "HELP YOU ",
                                  style: TextStyle(
                                    color: ColorConstants.kPrimaryColor,
                                  )
                                  ),
                                  TextSpan(text: "TO BE A BETTER "),
                                  TextSpan(text: "VERSION OF "),
                                  TextSpan(text: "YOURSELF",
                                      style: TextStyle(
                                        color: ColorConstants.kPrimaryColor,
                                      ),
                                  ),
                                ]
                              ),
                          ),
                          SizedBox(
                            height: sizeV * 5,
                          ),
                        ],
                      ),
                  ),
              ),
              Expanded(
                flex: 1,
                  child: Column(
                    children: [
                      currentPage == onboardingContents.length - 1
                          ? MyTextButton(
                        buttonName: "Get Started",
                        bgColor: ColorConstants.kPrimaryColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OptionPage()
                              )
                          );
                        },
                      ):
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OnBoardingBtn(
                            name: "Skip",
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OptionPage()
                                  )
                              );
                            },
                          ),
                          Row(
                            children: List.generate(
                                onboardingContents.length,
                                    (index) => dotIndicator(index),
                            )
                          ),
                          OnBoardingBtn(
                              name: "Next",
                              onPressed: (){
                                _pageController.nextPage(
                                    duration: Duration(
                                      milliseconds: 400
                                    ),
                                    curve: Curves.easeInOut,
                                );
                              }
                          )
                        ],
                      ),
                    ],
                  ),
              )
            ],
          ),
      ),
    );
  }
}



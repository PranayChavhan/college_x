import 'package:college_x/authenticate/as_a_student/signup.dart';
import 'package:flutter/material.dart';

import '../../constraints.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {

  final _text1 = TextEditingController();
  final _text2 = TextEditingController();
  bool _validate1 = false;
  bool _validate2 = false;

  @override
  void dispose() {
    _text1.dispose();
    super.dispose();
    _text2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Image.asset("assets/images/login.jpg",
                  width: sizeH * 70,
                  // height: sizeV * 50,
                ),
                Text(
                  'Welcome Back!',
                  style: kTitle,
                ),
                SizedBox(height: 7,),
                Text(
                  'Log in to your existent account of CollageX',
                  style: kBodyText,
                ),
                const SizedBox(height: 14),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: <Widget> [
                      TextField(
                        controller: _text1,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorConstants.kDarkColor)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorConstants.kDarkColor)),
                          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                          hintText: 'Enter your Email',
                          hintStyle: TextStyle(color: ColorConstants.kDarkColor),
                          label: Text(
                            'Email',
                            style: TextStyle(color: ColorConstants.kDarkColor),
                          ),
                          errorText: _validate1 ? 'Enter your Email' : null,

                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: _text2,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorConstants.kDarkColor)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorConstants.kDarkColor)),
                          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                          hintText: 'Enter your Password',
                          hintStyle: TextStyle(color: ColorConstants.kDarkColor),
                          label: Text('Password', style: TextStyle(color: ColorConstants.kDarkColor),),
                          errorText: _validate2 ? 'Enter your Password' : null,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text('Forget Password', style: TextStyle(color: ColorConstants.kGreyColor),)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,

                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {

                        _text1.text.isEmpty ? _validate1 = true : _validate1 = false;
                        _text2.text.isEmpty ? _validate2 = true : _validate2 = false;
                      });
                    },
                    style : ElevatedButton.styleFrom(primary: ColorConstants.kSecondaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        )
                    ),
                    child: const Text('Log in'),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: ColorConstants.kDarkColor),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                              )
                          );
                        },
                        child: Text('Sign Up', style: TextStyle(color: ColorConstants.kSecondaryColor),))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}


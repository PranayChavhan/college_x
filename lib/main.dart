
import 'package:college_x/authenticate/as_a_student/login.dart';
import 'package:college_x/authenticate/as_a_student/signup.dart';
import 'package:college_x/utils/routes.dart';
import 'package:college_x/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Home/bottombarpage.dart';
import 'Home/drawerpage.dart';
import 'authenticate/optionpage.dart';
import 'onboarding/onboarding_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.onboardingRoute,
      routes: {
        // "/": (BuildContext context) => LoginPage(),
        MyRoutes.onboardingRoute : (BuildContext context) => OnboardingScreen(),
        MyRoutes.optionPageRoute: (BuildContext context) => OptionPage(),
        MyRoutes.loginPageRoute: (BuildContext context) => LoginPage(),
        MyRoutes.signupPageRoute: (BuildContext context) => SignupPage(),
        MyRoutes.drawerpagePageRoute: (BuildContext context) => DrawerPage(),
        MyRoutes.bottombarPageRoute: (BuildContext context) => BottomBar(),
      },
      // home:  OnboardingScreen()  OptionPage(),
    );
  }
}

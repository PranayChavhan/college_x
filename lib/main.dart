import 'package:college_x/utils/routes.dart';
import 'package:college_x/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'authenticate/optionpage.dart';
import 'onboarding/onboarding_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  //To show status bar

  runApp(const MyApp());
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
      },
      // home:  OnboardingScreen()  OptionPage(),
    );
  }
}

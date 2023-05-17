import 'package:commuter/urgentMessages.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'FAQ.dart';
import 'Help.dart';
import 'Home_Page.dart';
import 'Reports.dart';
import 'Sign_in.dart';
import 'importantMessages.dart';
import 'newShift.dart';
import 'rides.dart';
import 'userData.dart';
import 'Map.dart';

late SharedPreferences sharedPref;
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              fontSizeFactor: 1.3,
              fontFamily: "Caveat",
            ),
      ),
      home: SignIn(),
      routes: {
        "urgentMessage": (context) => urgentMessage(),
        "importantMessage": (context) => importantMessage(),
        "userData": (context) => userData(),
        "newShift": (context) => newShift(),
        "Home": (context) => HomePage(),
        "Rides": (context) => Rides(),
        "FAQ": (context) => FAQ(),
        "Reports": (context) => Reports(),
        "SignIn": (context) => SignIn(),
        "Help": (context) => Help(),
        "Map": (context) => Map(),
        //   "Rating": (context) => Rate(),
        //   "Help": (context) => Help(),
      },
    );
  }
}

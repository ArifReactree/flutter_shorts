import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/aws.dart';
import 'package:flutter_shorts/screens/choice_screen.dart';
import 'package:flutter_shorts/screens/da_cast.dart';
import 'package:flutter_shorts/screens/google-cdn.dart';
import 'package:flutter_shorts/screens/muvi_page.dart';
import 'package:flutter_shorts/screens/vadoo_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: ChoiceScreen(),
      routes: {
        MuviPage.id:(context) => MuviPage(),
        DaCast.id:(context) => DaCast(),
        VadooScreen.id:(context) => VadooScreen(),
        GoogleCDN.id:(context) => GoogleCDN(),
        AWS.id:(context) => AWS()
      },
    );
  }
}

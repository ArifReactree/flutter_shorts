import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/aws.dart';
import 'package:flutter_shorts/screens/da_cast.dart';
import 'package:flutter_shorts/screens/vadoo_screen.dart';

import 'google-cdn.dart';
import 'muvi_page.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MuviPage.id);
              },
              child: Text(
                "Muvi",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(DaCast.id);
              },
              child: Text(
                "DA Cast",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(VadooScreen.id);
              },
              child: Text(
                "Vadoo",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(GoogleCDN.id);
              },
              child: Text(
                "Google",
              ),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AWS.id);
              },
              child: Text(
                "AWS",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

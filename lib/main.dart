// Prfile created by Nayan //

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue.shade400, Colors.pink.shade400])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/maskdp.jpg'),
              radius: 100,
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Nayan Kumar Sinha',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'CSE Undergrduate Student',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'at',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Siliguri Institute of Technology',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.twitter,
                      size: 50,
                    ),
                    onPressed: () async {
                      const url = 'https://twitter.com/Nayan_Kr_Sinha';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
                IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.github,
                      size: 50,
                    ),
                    onPressed: () async {
                      const url = 'https://github.com/Nayan-Sinha';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
                IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.linkedin,
                      size: 50,
                    ),
                    onPressed: () async {
                      const url =
                          'https://www.linkedin.com/in/nayan-kumar-sinha-046bb31b6/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

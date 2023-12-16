import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/screens/homescreen.dart';

void main() {
  runApp(const MpApp());
}

class MpApp extends StatelessWidget {
  const MpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      // we are using dark theme
      theme: ThemeData.dark().copyWith(
          primaryColor:
              primaryColor, //Sets the background color for the app's scaffold
          scaffoldBackgroundColor:
              bgColor, //Sets the background color for the app's scaffold
          canvasColor: bgColor, // Sets the color of the Material canvas.
          // setting the text theme
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                  // ignore: deprecated_member_use
                  bodyText1: const TextStyle(color: bodyTextColor),
                  // ignore: deprecated_member_use
                  bodyText2: const TextStyle(color: bodyTextColor))),
      home: const homeScreen(),
    );
  }
}

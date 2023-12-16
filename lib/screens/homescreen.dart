import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/screens/mainScreen.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return mainScreen(childrn: const [homeBanner()]);
  }
}

class homeBanner extends StatelessWidget {
  const homeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand, // takes the available space provide by its parent
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover, // image get covered to the avalable space
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                DefaultTextStyle(
                  // set the text theme same style to all widget under it
                  style: Theme.of(context).textTheme.subtitle1!,
                  child: Row(
                    children: [
                      const fluttercodedtext(),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const Text("Hey I Build "),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TyperAnimatedText("Cross platform Apps",
                              speed: const Duration(milliseconds: 60)),
                          TyperAnimatedText("Responsive web and mobile app",
                              speed: const Duration(milliseconds: 60)),
                          TyperAnimatedText("my own servers using Node.js",
                              speed: const Duration(milliseconds: 60)),
                          TyperAnimatedText(
                              "Amazon app, Chat App ,e-commerce Shoe app and many more",
                              speed: const Duration(milliseconds: 60)),
                        ],
                      ),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const fluttercodedtext(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                MouseRegion(
                  child: ElevatedButton(
                      onPressed: () {
                        // link to another porfolio
                      },
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2,
                              vertical: defaultPadding),
                          backgroundColor: primaryColor),
                      child: const Text(
                        "EXPLORE NOW",
                        style: TextStyle(color: darkColor),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class fluttercodedtext extends StatelessWidget {
  const fluttercodedtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(text: "<", children: [
      TextSpan(text: "Flutter", style: TextStyle(color: primaryColor)),
      TextSpan(text: ">")
    ]));
  }
}

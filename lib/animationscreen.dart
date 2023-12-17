import 'package:flutter/material.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/screens/homescreen.dart';

class animateIntro extends StatefulWidget {
  const animateIntro({super.key});

  @override
  State<animateIntro> createState() => _animateIntroState();
}

class _animateIntroState extends State<animateIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Dhruv Sharma",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 17)),
            ),
            TweenAnimationBuilder(
                onEnd: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => homeScreen()));
                },
                tween: Tween<double>(begin: 0, end: 10),
                duration: defaultDuration * 3,
                builder: (context, double value, child) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: LinearProgressIndicator(
                            value: value * 0.1,
                            color: primaryColor,
                            backgroundColor: darkColor,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text((value * 10).toInt().toString() + "%")
                      ],
                    ))
          ],
        ),
      ),
    );
  }
}

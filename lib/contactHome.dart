import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/screens/homescreen.dart';

class contactHome extends StatefulWidget {
  const contactHome({super.key});

  @override
  State<contactHome> createState() => _contactHomeState();
}

class _contactHomeState extends State<contactHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [topSection()],
      )),
    );
  }
}

class topSection extends StatelessWidget {
  const topSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/background.png"))),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            bluredWidget(size: size),
            Positioned(
                top: -20,
                right: 40,
                bottom: 310,
                child: Container(
                  constraints:
                      const BoxConstraints(maxWidth: 639, maxHeight: 860),
                  child: Image.asset(
                    "assets/images/avatar.png",
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class bluredWidget extends StatelessWidget {
  const bluredWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/D.png",
          color: Colors.black,
          height: 120,
          width: 125,
          fit: BoxFit.fill,
        ),
        aboutMe(size: size),
        const Spacer(
          flex: 3,
        )
      ],
    );
  }
}

class aboutMe extends StatelessWidget {
  const aboutMe({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
              ),
              const Text(
                "Dhruv \nSharma",
                style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.2),
              ),
              Text(
                "Creative App Developer",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// done through extract widget option in bulb icon
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_web/constant.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // aspectRatio: This property is a ratio of width to height. It is used to specify the desired aspect ratio for the child widget. In your example, aspectRatio: 1.23 means that the width should be 1.23 times the height.
          // profile details
          AspectRatio(
            aspectRatio: 1.23,
            child: Container(
              color: const Color(0xFF242430),
              child: Column(
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/pic.jpg"),
                  ),
                  const Spacer(),
                  Text(
                    "Dhruv Sharma",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2, // subtitle 2 theme get implemented
                  ),
                  const Text(
                    "Flutter Developer & SDE \n Velllore Institute Of Technology ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
          // area info
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(
                defaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  areaInfo(
                    title: "Residence",
                    text: "Karnataka,India",
                  ),
                  areaInfo(
                    title: "City",
                    text: "Manipal",
                  ),
                  areaInfo(
                    title: "Age",
                    text: "19",
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: defaultPadding / 2,
                    ),
                    child: Text(
                      "Skills",
                      style: Theme.of(context).textTheme.subtitle2,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: skillbadge(
                        title: "Flutter",
                        value: 0.8,
                      )),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                          child: skillbadge(
                        title: "Java",
                        value: 0.75,
                      )),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                          child: skillbadge(
                        title: "Node Js",
                        value: 0.64,
                      ))
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  const coding(),
                  const Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Knowledges",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  knowledge(
                    desc: "Flutter, Dart",
                  ),
                  knowledge(
                    desc: "Firebase, Cloudinary",
                  ),
                  knowledge(
                    desc: "Node.js,Express.js,Mongo Db",
                  ),
                  knowledge(
                    desc: "Git,Github",
                  ),
                  knowledge(
                    desc: "SQL,Docker",
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                              ),
                              const SizedBox(
                                width: defaultPadding / 2,
                              ),
                              SvgPicture.asset("assets/images/download.svg")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  // social media platform lninks
                  Container(
                    color: const Color(0xFF24242e),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/linkedin.svg",
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/github.svg",
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/twitter.svg",
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// knowledge area
class knowledge extends StatelessWidget {
  knowledge({super.key, this.desc});

  String? desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/check.svg"),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text("$desc")
        ],
      ),
    );
  }
}

// coding section
class coding extends StatelessWidget {
  const coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        lineartween(
          title: "Dart",
          value: 0.80,
        ),
        lineartween(
          title: "Firebase",
          value: 0.78,
        ),
        lineartween(
          title: "JavaScript",
          value: 0.70,
        ),
        lineartween(
          title: "C++",
          value: 0.76,
        ),
        lineartween(
          title: "SQL",
          value: 0.62,
        ),
      ],
    );
  }
}

// linear tween animated used in coding section
class lineartween extends StatelessWidget {
  lineartween({super.key, this.title, this.value});

  String? title;
  double? value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: value),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$title",
                  style: const TextStyle(color: Colors.white),
                ),
                Text((value * 100).toInt().toString() + "%")
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}

// circular skill badge
class skillbadge extends StatelessWidget {
  skillbadge({super.key, this.value, this.title});
  double? value;
  String? title;

  @override
  // this automatically get the size of the available space from the parent
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(
                begin: 0, end: value), // start from zero and end it till value
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value, // this is the value at which stops
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + "%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Text(
          title.toString(),
          maxLines: 1,
          overflow: TextOverflow.clip,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}

// area info
class areaInfo extends StatelessWidget {
  areaInfo({super.key, this.title, this.text});

  String? title;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title",
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            "$text",
            style: const TextStyle(),
          )
        ],
      ),
    );
  }
}

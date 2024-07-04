import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/project.dart';
import 'package:portfolio_web/reccomndation.dart';
import 'package:portfolio_web/responsive.dart';
import 'package:portfolio_web/screens/mainScreen.dart';

class homeScreen extends StatelessWidget {
  homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return mainScreen(childrn: [
      const homeBanner(),
      const highLightInfo(),
      // My projects section
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style:
                Theme.of(context).textTheme.headline6!.copyWith(fontSize: 20),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Responsive(
              mobileLarge: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 2)
                        .copyWith(right: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics:
                        const NeverScrollableScrollPhysics(), // it let the scrollable internal to be none
                    itemCount:
                        demo_projects.length, // length of list in demo projects
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                1.3, //it suggests that the width of the child element is 1.3 times the height.
                            crossAxisSpacing: defaultPadding,
                            mainAxisSpacing: defaultPadding),
                    itemBuilder: (context, index) => Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                demo_projects[index].title.toString(),
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              const Spacer(),
                              Text(
                                demo_projects[index].description.toString(),
                                style: const TextStyle(height: 1.5),
                                maxLines:
                                    Responsive.isMobileLarge(context) ? 3 : 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Spacer(),
                              TextButton(
                                  onPressed: () {
                                    // github links to respective projects
                                  },
                                  child: const Text(
                                    "Read More >>",
                                    style: TextStyle(color: primaryColor),
                                  ))
                            ],
                          ),
                        )),
              ),
              mobile: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 2)
                        .copyWith(right: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics:
                        const NeverScrollableScrollPhysics(), // it let the scrollable internal to be none
                    itemCount:
                        demo_projects.length, // length of list in demo projects
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio:
                                1.7, //it suggests that the width of the child element is 1.3 times the height.
                            crossAxisSpacing: defaultPadding,
                            mainAxisSpacing: defaultPadding),
                    itemBuilder: (context, index) => Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                demo_projects[index].title.toString(),
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              const Spacer(),
                              Text(
                                demo_projects[index].description.toString(),
                                style: const TextStyle(height: 1.5),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Spacer(),
                              TextButton(
                                  onPressed: () {
                                    // github links to respective projects
                                  },
                                  child: const Text(
                                    "Read More >>",
                                    style: TextStyle(color: primaryColor),
                                  ))
                            ],
                          ),
                        )),
              ),
              tablet: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 2)
                        .copyWith(right: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics:
                        const NeverScrollableScrollPhysics(), // it let the scrollable internal to be none
                    itemCount:
                        demo_projects.length, // length of list in demo projects
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio:
                                1.1, //it suggests that the width of the child element is 1.3 times the height.
                            crossAxisSpacing: defaultPadding,
                            mainAxisSpacing: defaultPadding),
                    itemBuilder: (context, index) => Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                demo_projects[index].title.toString(),
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              const Spacer(),
                              Text(
                                demo_projects[index].description.toString(),
                                style: const TextStyle(height: 1.5),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Spacer(),
                              TextButton(
                                  onPressed: () {
                                    // github links to respective projects
                                  },
                                  child: const Text(
                                    "Read More >>",
                                    style: TextStyle(color: primaryColor),
                                  ))
                            ],
                          ),
                        )),
              ),
              // 3 1.3
              desktop: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 2)
                        .copyWith(right: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics:
                        const NeverScrollableScrollPhysics(), // it let the scrollable internal to be none
                    itemCount:
                        demo_projects.length, // length of list in demo projects
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio:
                                1.3, //it suggests that the width of the child element is 1.3 times the height.
                            crossAxisSpacing: defaultPadding,
                            mainAxisSpacing: defaultPadding),
                    itemBuilder: (context, index) => Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                demo_projects[index].title.toString(),
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              const Spacer(),
                              Text(
                                demo_projects[index].description.toString(),
                                style: const TextStyle(height: 1.5),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Spacer(),
                              TextButton(
                                  onPressed: () {
                                    // github links to respective projects
                                  },
                                  child: const Text(
                                    "Read More >>",
                                    style: TextStyle(color: primaryColor),
                                  ))
                            ],
                          ),
                        )),
              ))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding)
                .copyWith(bottom: defaultPadding / 2),
            child: Column(
              children: [
                Text(
                  "Visionary",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
        ],
      ),

      // we can use horizontal scroll view as well in single scroll view
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              demo_recommendations.length,
              (index) => Container(
                    width: 400,
                    margin: const EdgeInsets.symmetric(horizontal: 10)
                        .copyWith(left: 0),
                    padding: const EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondaryColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          demo_recommendations[index].name.toString(),
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          demo_recommendations[index].source.toString(),
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        Text(
                          demo_recommendations[index].text.toString(),
                          maxLines: 6,
                          overflow: TextOverflow.fade,
                          style: const TextStyle(height: 1.5),
                        )
                      ],
                    ),
                  )),
        ),
      ),
      const SizedBox(
        height: 20,
      )
    ]);
  }
}

class highLightInfo extends StatelessWidget {
  const highLightInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
              vertical: defaultPadding / 2, horizontal: 10)
          .copyWith(left: 0),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    heightLight(
                      value: 150,
                      title: "DSA Resolved",
                    ),
                    heightLight(
                      value: 8,
                      title: "Projects",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    heightLight(
                      value: 160,
                      title: "Contributions",
                    ),
                    heightLight(
                      value: 15,
                      title: "Repost.",
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                heightLight(
                  value: 150,
                  title: "DSA Resolved",
                ),
                heightLight(
                  value: 15,
                  title: "Repos",
                ),
                heightLight(
                  value: 160,
                  title: "Contributions",
                ),
                heightLight(
                  value: 8,
                  title: "Projects",
                ),
              ],
            ),
    );
  }
}

class heightLight extends StatelessWidget {
  heightLight({super.key, this.value, this.title});

  int? value;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        inttween(
          value: value,
          title: "+",
        ),
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          "$title",
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 17),
        )
      ],
    );
  }
}

class inttween extends StatelessWidget {
  inttween({super.key, this.value, this.title});

  int? value;
  String? title;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0, end: value),
        duration: const Duration(seconds: 2),
        builder: (context, value, child) => Text(
              "$value$title",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: primaryColor),
            ));
  }
}

class homeBanner extends StatelessWidget {
  const homeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
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
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Responsive.isMobileLarge(context)
                    ? const SizedBox(
                        height: defaultPadding / 2,
                      )
                    : Container(),
                DefaultTextStyle(
                  // set the text theme same style to all widget under it
                  style: Theme.of(context).textTheme.subtitle1!,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  child: Row(
                    children: [
                      if (!Responsive.isMobileLarge(context))
                        const fluttercodedtext(),
                      if (!Responsive.isMobileLarge(context))
                        const SizedBox(
                          width: defaultPadding / 2,
                        ),
                      const Text("Hey I Build "),
                      Responsive.isMobile(context)
                          ? Expanded(
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  TyperAnimatedText("Cross platform Apps",
                                      speed: const Duration(milliseconds: 60)),
                                  TyperAnimatedText(
                                      "Responsive web and mobile app",
                                      speed: const Duration(milliseconds: 60)),
                                  TyperAnimatedText(
                                      "my own servers using Node.js",
                                      speed: const Duration(milliseconds: 60)),
                                  if (!Responsive.isMobileLarge(context))
                                    TyperAnimatedText(
                                        "Amazon app, Chat App ,e-commerce Shoe app and many more",
                                        speed:
                                            const Duration(milliseconds: 60)),
                                ],
                              ),
                            )
                          : AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                TyperAnimatedText("Cross platform Apps",
                                    speed: const Duration(milliseconds: 60)),
                                TyperAnimatedText(
                                    "Responsive web and mobile app",
                                    speed: const Duration(milliseconds: 60)),
                                TyperAnimatedText(
                                    "my own servers using Node.js",
                                    speed: const Duration(milliseconds: 60)),
                                if (!Responsive.isMobileLarge(context))
                                  TyperAnimatedText(
                                      "Amazon app, Chat App ,e-commerce Shoe app and many more",
                                      speed: const Duration(milliseconds: 60)),
                              ],
                            ),
                      if (!Responsive.isMobileLarge(context))
                        const SizedBox(
                          width: defaultPadding / 2,
                        ),
                      if (!Responsive.isMobileLarge(context))
                        const fluttercodedtext(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Responsive.isMobileLarge(context)
                    ? Container()
                    : ElevatedButton(
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
                        ))
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

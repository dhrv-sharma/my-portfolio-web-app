// done through extract widget option in bulb icon
import 'package:flutter/material.dart';
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
                    text: "22",
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

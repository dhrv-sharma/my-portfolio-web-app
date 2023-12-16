import 'package:flutter/material.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/screens/sidemenu.dart';

class mainScreen extends StatefulWidget {
  mainScreen({super.key, required this.childrn});

  @override
  final List<Widget> childrn;
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // we set the max width of this widget can be expanded upto this value
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // now each widget takes 50 perc of space
              const Expanded(
                  // flex property is used to set the availble space if flex is 2 means 2 parts of available space is taken by this and left by another
                  flex: 2,
                  child: SideMenu()),
              const SizedBox(
                width: defaultPadding / 2,
              ),
              Expanded(
                  // it will take 7 parts of availble space here totla will be 2 + 7 = 9 7/9 percent taken by this
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [...widget.childrn],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class AboutState extends StatefulWidget {
  AboutState({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<AboutState>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

  }

  @override
  // builds the view
  Widget build(BuildContext context) {

    // scaffold generates the UI
    return new Scaffold(
      // App bar is the top most bar of the app
        appBar: AppBar(
          title: Text('Grade Calculator'),
        ),

        body: Column(
          children: [
            Center(
              child: Text("            ") ,
            ),
            Center(
                child: Text("To use this app simply enter your grades for each category and enter each categories weight. "
                    "Most classes only have 4 or 5 categories, but the app supports up to 7."),
            ),

            Center(
                child: Text("Programmed by Jake Stuck"),
            ),

          ],
        ),
        drawer: GlobalDrawer.getDrawer(context)
    );
  }
}
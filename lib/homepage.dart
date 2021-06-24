import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String letterGrade;
  double percentageGrade, currentWeight;


  @override
  // builds the view
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        title: Text('Grade Calculator'),
      ),
      drawer: GlobalDrawer.getDrawer(context),

      body: Container(
      child: Center(
        child: Column(
          children: <Widget>[
          SizedBox(width: 360, height: 360, child:
         Form(
          key: _formKey,
          child: ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Row(children: [
                  Expanded(
                    child: TextField(
                     decoration: InputDecoration(
                       hintText: "Enter your grade",
                     ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter the weight",
                      ),
                    ),
                  ),
                ]);

              }),
           ),
          ),
            OutlinedButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text("Enter"),
            ),
            OutlinedButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text("Clear"),
            ),
            Text("Your final grade is: $percentageGrade%"),
            Text("Letter Grade: $letterGrade"),
            Text("         "),
            Text("weighted $currentWeight% out of 100%"),
          ],
        ),
      ),
      ),

    );


  }


}
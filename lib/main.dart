import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:grade_calculator/homepage.dart';
import 'package:grade_calculator/about.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}


/// The shared drawer/sidebar with our page links
class GlobalDrawer {

  bool _amplifyConfigured = false;

  static getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
        DrawerHeader(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://cdn.psychologytoday.com/sites/default/files/styles/article-inline-half/public/field_blog_entry_images/2017-08/grades.png?itok=7FO8n2Gw'),
              fit: BoxFit.contain)),
    ),

        ListTile(
         leading: Text('Home'),
        trailing: Icon(Icons.home),
        onTap: () {
        Navigator.pop(context);
        Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
        }),

          ListTile(
          leading: Text('Help'),
              trailing: Icon(Icons.android),
              onTap: () {
              Navigator.pop(context);
              Navigator.push(
              context, MaterialPageRoute(builder: (context) => AboutState()));
          })

    ],
    ),
    );
  }
}
/// The shared exercises user for display across the app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grade Calculator',
      theme: ThemeData(
        primaryColor: Colors.lightGreen[900],

        primarySwatch: Colors.lightGreen,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}
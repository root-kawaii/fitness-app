import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Food.dart';
import 'Blog.dart';
import 'Settings.dart';
import 'Sleep.dart';
import 'Stress.dart';
import 'Training.dart';
import 'Profile.dart';
import 'Home.dart';

class Training extends StatefulWidget {
  @override
  _TrainingState createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        foregroundColor: Colors.green[200],
        backgroundColor: Colors.green[200],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            new Container(
              color: Colors.teal[800],
              child: new Column(
                children: [
                  DrawerHeader(
                    //accountName: Text("matteo_regge"),
                    //accountEmail: Text("teo.regge.99@gmail.com"),
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow[800],
                      foregroundColor: Colors.blue[200],
                      child: Icon(Icons.person_sharp, size: 30),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              color: Colors.teal[800],
              child: new Column(
                children: [
                  ListTile(
                    //tileColor: Colors.green[300],
                    leading: Icon(Icons.label_sharp),
                    //doesn't work for now
                    //hoverColor: Colors.blue[200],
                    title: Text('Profile'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Profile()));
                    },
                  ),
                  ListTile(
                    //tileColor: Colors.green[300],
                    leading: Icon(Icons.label_sharp),
                    title: Text('Food'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Food()));
                    },
                  ),
                  ListTile(
                    //tileColor: Colors.green[300],
                    leading: Icon(Icons.label_sharp),
                    title: Text('Training'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Training()));
                    },
                  ),
                  ListTile(
                    //tileColor: Colors.green[300],
                    leading: Icon(Icons.label_sharp),
                    title: Text('Stress'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Stress()));
                    },
                  ),
                  ListTile(
                    //tileColor: Colors.green[300],
                    leading: Icon(Icons.label_sharp),
                    title: Text('Sleep'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Sleep()));
                    },
                  ),
                  ListTile(
                    //tileColor: Colors.green[300],
                    leading: Icon(Icons.label_sharp),
                    title: Text('Blog'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Blog()));
                    },
                  ),
                  ListTile(
                    //tileColor: Colors.green[300],
                    leading: Icon(Icons.label_sharp),
                    title: Text('Settings'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Settings()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    trailing: Icon(Icons.close),
                    title: Text('Close'),
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Container(
              //decoration: BoxDecoration(color: Colors.green[200]),
              color: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
  }
}

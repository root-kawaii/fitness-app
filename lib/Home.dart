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

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        foregroundColor: Colors.green[200],
        backgroundColor: Colors.green[200],
      ),
      body: Center(
          child: ListView(children: <Widget>[
        Center(
            heightFactor: 2,
            widthFactor: 2,
            child: CircleAvatar(
              backgroundColor: Colors.yellow[800],
              foregroundColor: Colors.blue[200],
              child: Icon(Icons.person_sharp, size: 30),
              radius: 50,
            )),
        Container(
          child: Text('Less Boring'),
          margin: const EdgeInsets.all(20.0),
          color: Colors.green[600],
          width: 48.0,
          height: 48.0,
        ),
        Container(
          child: Text('Less Boring'),
          margin: const EdgeInsets.all(20.0),
          color: Colors.green[600],
          width: 48.0,
          height: 48.0,
        ),
        Container(
          child: Text('Less Boring'),
          margin: const EdgeInsets.all(20.0),
          color: Colors.green[600],
          width: 48.0,
          height: 48.0,
        )
      ])),
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
                  Divider(),
                  Card(
                    color: Colors.green[200],
                    child: ListTile(
                      title: Text(
                          'BMI                                        20,5'),
                    ),
                  ),
                  Card(
                    color: Colors.green[200],
                    child: ListTile(
                      title: Text('Maximum Frequency              200'),
                    ),
                  ),
                  Card(
                    color: Colors.green[200],
                    child: ListTile(
                      title: Text('Lean Mass                             36,6'),
                    ),
                  ),
                  Card(
                    color: Colors.green[200],
                    child: ListTile(
                      title:
                          Text('Waist Circ                             70cm'),
                    ),
                  ),
                  Card(
                    color: Colors.green[200],
                    child: ListTile(
                      trailing: Icon(Icons.close),
                      title: Text('Close'),
                      onTap: () => Navigator.pop(context),
                    ),
                  )
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

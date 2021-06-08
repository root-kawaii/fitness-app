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
      backgroundColor: Colors.red[100],
      appBar: new AppBar(
        foregroundColor: Colors.red[400],
        backgroundColor: Colors.red[400],
      ),
      body: Center(
          child: ListView(children: <Widget>[
        SizedBox(
          //Use of SizedBox
          height: 40,
        ),
        new CircularPercentIndicator(
          radius: 200.0,
          lineWidth: 30.0,
          percent: 0.66,
          header: new Text("Goal"),
          center: new Icon(
            Icons.person,
            size: 40.0,
            color: Colors.blue,
          ),
          backgroundColor: Colors.yellow[100],
          progressColor: Colors.blue,
        ),
        SizedBox(
          //Use of SizedBox
          height: 30,
        ),
        Card(
          color: Colors.green[200],
          child: ListTile(
            title: Text(
                '   Food                                                                    45%'),
          ),
        ),
        SizedBox(
          //Use of SizedBox
          height: 30,
        ),
        Card(
          color: Colors.purple[200],
          child: ListTile(
            title: Text(
                '   Training                                                              73%'),
          ),
        ),
        SizedBox(
          //Use of SizedBox
          height: 30,
        ),
        Card(
          color: Colors.blue[200],
          child: ListTile(
            title: Text(
                '   Sleep                                                                  82%'),
          ),
        ),
        SizedBox(
          //Use of SizedBox
          height: 30,
        ),
        Card(
          color: Colors.pink[200],
          child: ListTile(
            title: Text(
                '   Stress                                                               62%'),
          ),
        ),
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
                      radius: 60,
                      backgroundColor: Colors.yellow[800],
                      foregroundColor: Colors.blue[200],
                      child: Icon(Icons.person_sharp, size: 60),
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
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  Card(
                    color: Colors.green[200],
                    child: ListTile(
                      title: Text('Maximum Frequency              200'),
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  Card(
                    color: Colors.green[200],
                    child: ListTile(
                      title: Text('Lean Mass                             36,6'),
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  Card(
                    color: Colors.green[200],
                    child: ListTile(
                      title:
                          Text('Waist Circ                             70cm'),
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  Card(
                    color: Colors.green[200],
                    child: ListTile(
                      title:
                          Text('Waist Circ                             70cm'),
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  Card(
                    color: Colors.green[200],
                    child: ListTile(
                      trailing: Icon(Icons.close),
                      title: Text('Close'),
                      onTap: () => Navigator.pop(context),
                    ),
                  ),
                  Divider(
                    height: 100,
                    thickness: 1,
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

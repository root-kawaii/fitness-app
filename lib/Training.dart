import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Training extends StatefulWidget {
  @override
  _TrainingState createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  @override
  double _currentSliderValue = 0;
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: new AppBar(
          foregroundColor: Colors.purple,
          backgroundColor: Colors.purple,
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.

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
                        title:
                            Text('Lean Mass                             36,6'),
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
        body: Center(
            child: ListView(children: <Widget>[
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            color: Colors.teal[200],
            padding: EdgeInsets.all(15.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new CircularPercentIndicator(
                  radius: 70.0,
                  lineWidth: 4.0,
                  percent: 0.10,
                  center: new Text("Breakfast"),
                  progressColor: Colors.red,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 70.0,
                  lineWidth: 4.0,
                  percent: 0.30,
                  center: new Text("Lunch"),
                  progressColor: Colors.orange,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 70.0,
                  lineWidth: 4.0,
                  percent: 0.60,
                  center: new Text("Dinner"),
                  progressColor: Colors.yellow,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 70.0,
                  lineWidth: 4.0,
                  percent: 0.90,
                  center: new Text("Snacks"),
                  progressColor: Colors.green,
                )
              ],
            ),
          ),
          Container(
            height: 150,
            color: Colors.transparent,
            margin: new EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: new Container(
                decoration: new BoxDecoration(
                    color: Colors.teal,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(20.0),
                      topRight: const Radius.circular(20.0),
                      bottomLeft: const Radius.circular(20.0),
                      bottomRight: const Radius.circular(20.0),
                    )),
                child: new Center(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new CircularPercentIndicator(
                        radius: 70.0,
                        lineWidth: 4.0,
                        percent: 0.10,
                        center: new Text("Breakfast"),
                        progressColor: Colors.red,
                      ),
                      new Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      new CircularPercentIndicator(
                        radius: 70.0,
                        lineWidth: 4.0,
                        percent: 0.30,
                        center: new Text("Lunch"),
                        progressColor: Colors.orange,
                      ),
                      new Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      new CircularPercentIndicator(
                        radius: 70.0,
                        lineWidth: 4.0,
                        percent: 0.60,
                        center: new Text("Dinner"),
                        progressColor: Colors.yellow,
                      ),
                      new Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      new CircularPercentIndicator(
                        radius: 70.0,
                        lineWidth: 4.0,
                        percent: 0.90,
                        center: new Text("Snacks"),
                        progressColor: Colors.green,
                      )
                    ],
                  ),
                )),
          ),
          new Container(
              height: 300.0,
              color: Colors.transparent,
              child: new Container(
                decoration: new BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0),
                    )),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Column(children: <Widget>[
                      Divider(
                        height: 20,
                      ),
                      new Text(
                        'How much stress',
                        textScaleFactor: 1.2,
                        style: GoogleFonts.vollkornSc(),
                      ),
                      new Text(
                        'did you feel',
                        textScaleFactor: 1.2,
                        style: GoogleFonts.vollkornSc(),
                      )
                    ]),
                    new Column(children: <Widget>[
                      Divider(
                        height: 20,
                      ),
                      Container(
                          child: Slider(
                        value: _currentSliderValue,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ))
                    ]),
                  ],
                ),
              )),
        ])));
  }
}

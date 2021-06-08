import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
import 'package:google_fonts/google_fonts.dart';

class Food extends StatefulWidget {
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    String text = '12';
    bool? status = false;
    final myController = TextEditingController();

    return new Scaffold(
        backgroundColor: Colors.green[200],
        appBar: new AppBar(
          foregroundColor: Colors.green,
          backgroundColor: Colors.green,
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
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Food()));
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
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Sleep()));
                      },
                    ),
                    ListTile(
                      //tileColor: Colors.green[300],
                      leading: Icon(Icons.label_sharp),
                      title: Text('Blog'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Blog()));
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
        body: Center(
          child: ListView(children: <Widget>[
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
                          lineWidth: 7.0,
                          percent: 0.10,
                          center: new Text("Breakfast"),
                          progressColor: Colors.red,
                        ),
                        new Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        new CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 7.0,
                          percent: 0.30,
                          center: new Text("Lunch"),
                          progressColor: Colors.orange,
                        ),
                        new Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        new CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 7.0,
                          percent: 0.60,
                          center: new Text("Dinner"),
                          progressColor: Colors.yellow,
                        ),
                        new Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        new CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 7.0,
                          percent: 0.90,
                          center: new Text("Snacks"),
                          progressColor: Colors.green,
                        )
                      ],
                    ),
                  )),
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
                          radius: 90.0,
                          lineWidth: 10.0,
                          percent: 0.60,
                          center: new Text("Caffeine",
                              style: GoogleFonts.openSansCondensed()),
                          progressColor: Colors.yellow,
                        ),
                        new Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        new CircularPercentIndicator(
                          radius: 90.0,
                          lineWidth: 10.0,
                          percent: 0.90,
                          center: new Text("Water"),
                          progressColor: Colors.green,
                        )
                      ],
                    ),
                  )),
            ),
            new CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 10.0,
              percent: 0.8,
              header: new Text("Icon header"),
              center: new Icon(
                Icons.person_pin,
                size: 50.0,
                color: Colors.blue,
              ),
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
            new CircularPercentIndicator(
              radius: 130.0,
              animation: true,
              animationDuration: 1200,
              lineWidth: 15.0,
              percent: 0.4,
              center: new Text(
                "40 hours",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.yellow,
              progressColor: Colors.red,
            ),
            new CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.7,
              center: new Text(
                "70.0%",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: new Text(
                "Sales this week",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 1.0,
                center: new Text("100%"),
                progressColor: Colors.green,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 4.0,
                    percent: 0.10,
                    center: new Text("10%"),
                    progressColor: Colors.red,
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  new CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 4.0,
                    percent: 0.30,
                    center: new Text("30%"),
                    progressColor: Colors.orange,
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  new CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 4.0,
                    percent: 0.60,
                    center: new Text("60%"),
                    progressColor: Colors.yellow,
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  new CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 4.0,
                    percent: 0.90,
                    center: new Text("90%"),
                    progressColor: Colors.green,
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
                ],
              ),
            )
          ]),
        ));
  }
}

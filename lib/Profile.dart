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

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                    Divider(
                      height: 30,
                    ),
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
                    Divider(
                      height: 30,
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
                    Divider(
                      height: 30,
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
                    Divider(
                      height: 1,
                      thickness: 1,
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
                      tileColor: Colors.green[800],
                      leading: Icon(Icons.label_sharp),
                      title: Text('Stress'),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
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
                    Divider(
                      height: 1,
                      thickness: 1,
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
                    Divider(
                      height: 1,
                      thickness: 1,
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
        appBar: new AppBar(
          foregroundColor: Colors.teal[800],
          backgroundColor: Colors.teal[800],
        ),
        body: Padding(
          padding: EdgeInsets.all(80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: LinearProgressIndicator(
                  value: 0.12,
                ),
              ),
              RotatedBox(
                quarterTurns: -1,
                child: LinearProgressIndicator(
                  value: 0.42,
                  valueColor: AlwaysStoppedAnimation(Colors.orange),
                  backgroundColor: Colors.blue,
                ),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: LinearProgressIndicator(
                  minHeight: 20,
                  value: 0.89,
                  valueColor: AlwaysStoppedAnimation(Colors.purple),
                  backgroundColor: Colors.lime,
                ),
              ),
            ],
          ),
        ));
  }
}

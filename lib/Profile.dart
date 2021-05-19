import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Food.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                color: Colors.green[200],
                child: new Column(
                  children: [
                    DrawerHeader(
                      //accountName: Text("matteo_regge"),
                      //accountEmail: Text("teo.regge.99@gmail.com"),
                      child: CircleAvatar(
                        backgroundColor: Colors.green[100],
                        foregroundColor: Colors.blue[200],
                        child: Icon(Icons.person, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                color: Colors.green[100],
                child: new Column(
                  children: [
                    ListTile(
                      //tileColor: Colors.green[300],
                      leading: Icon(Icons.label_sharp),
                      title: Text('Profile'),
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
                                builder: (context) => Food()));
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
                                builder: (context) => Food()));
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
                                builder: (context) => Food()));
                      },
                    ),
                    ListTile(
                      //tileColor: Colors.green[300],
                      leading: Icon(Icons.label_sharp),
                      title: Text('Feedback'),
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
                      title: Text('Blog'),
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
                      title: Text('Settings'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Food()));
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

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Welcome, User!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        canvasColor: Colors.green[100],
      ),
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          foregroundColor: Colors.green[200],
          backgroundColor: Colors.green[200],
          title: new Text(title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 15,
            ),
            LinearProgressIndicator(),
          ],
        )));
  }
}

class ProfilePage extends StatelessWidget {
  final String title;
  ProfilePage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          foregroundColor: Colors.green[200],
          backgroundColor: Colors.green[200],
          title: new Text(title),
        ),
        body: Center(
            child: Container(
                margin: EdgeInsets.only(top: 120, bottom: 120, left: 300),
                //padding: EdgeInsets.only(top: 120),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(120.0),
                        child: new LinearPercentIndicator(
                          width: 140.0,
                          lineHeight: 14.0,
                          percent: 0.5,
                          center: Text(
                            "50.0%",
                            style: new TextStyle(fontSize: 12.0),
                          ),
                          //trailing: Icon(Icons.mood),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: Colors.grey,
                          progressColor: Colors.blue,
                        ),
                      ),
                    ]))));
  }
}

class FoodPage extends StatelessWidget {
  final String title1;
  FoodPage(this.title1);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          foregroundColor: Colors.green[200],
          backgroundColor: Colors.green[200],
          title: new Text(title1),
        ),
        body: Center(
          child: Container(
            child: SfRadialGauge(axes: <RadialAxis>[
              RadialAxis(
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      positionFactor: 0.1,
                      angle: 90,
                      widget: Text(
                        20.toStringAsFixed(0) + ' / 100',
                        style: TextStyle(fontSize: 11),
                      ))
                ],
                pointers: <GaugePointer>[
                  RangePointer(
                    value: 20,
                    cornerStyle: CornerStyle.bothCurve,
                    width: 0.2,
                    sizeUnit: GaugeSizeUnit.factor,
                  )
                ],
                minimum: 0,
                maximum: 100,
                showLabels: false,
                showTicks: false,
                axisLineStyle: AxisLineStyle(
                  thickness: 0.2,
                  cornerStyle: CornerStyle.bothCurve,
                  color: Color.fromARGB(30, 0, 169, 181),
                  thicknessUnit: GaugeSizeUnit.factor,
                ),
              )
            ]),
          ),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
        //foregroundColor: Colors.green[200],
        backgroundColor: Colors.green[200],
      ),
      body: Center(child: Text('This is our app...')),
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
                              builder: (context) =>
                                  new ProfilePage('Profile')));
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
                              builder: (context) => new FoodPage('Food')));
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
                              builder: (context) => new NewPage('Training')));
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
                              builder: (context) => new NewPage('Stress')));
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
                              builder: (context) => new NewPage('Sleep')));
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
                              builder: (context) => new NewPage('Feedback')));
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
                              builder: (context) => new NewPage('Blog')));
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
                              builder: (context) => new NewPage('Settings')));
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

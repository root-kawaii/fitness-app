/*

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

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

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
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
    );
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
          child: ListView(children: <Widget>[
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
                  )
                ],
              ),
            )
          ]),
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






int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _children = [
    Home(),
    Profile(),
    Food(),
    Training(),
    Sleep(),
    Settings(),
  ];
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 2: Food',
      style: optionStyle,
    ),
    Text(
      'Index 3: Training',
      style: optionStyle,
    ),
    Text(
      'Index 4: Sleep',
      style: optionStyle,
    ),
    Text(
      'Index 5: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Food',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Training',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.single_bed_sharp),
            label: 'Sleep',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      */
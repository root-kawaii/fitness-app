import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'NECST Fitness Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Parent(),
      ),
    );
  }
}

class Child extends StatefulWidget {
  final int counter;
  final Function(int childCounter) callback; //here is your callback
  const Child({
    Key key,
    this.counter,
    this.callback,
  }) : super(key: key);

  @override
  _ChildState createState() => _ChildState();
}

class _ChildState extends State<Child> {
  String _childState = '';
  String name = '';
  bool state = false;
  String controllerString = '40';

  final myController = TextEditingController();
  final myController2 = TextEditingController();

  //Update controller and listen
  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
    myController2.addListener(_printLatestValue2);
  }

  //Print those changes
  _printLatestValue() {
    print("${myController.text}");
  }

  _printLatestValue2() {
    print("${myController2.text}");
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your Name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: myController2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your Kcal goals',
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            'Did you eat Proteins : $state',
            style: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
          Switch(
              activeColor: Colors.pinkAccent,
              value: state,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  state = value;
                });
              }),
          Text("Increment your Kcal"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: Icon(Icons.expand_more_sharp),
                  onPressed: () {
                    this.widget.callback(
                        this.widget.counter - 10); //here is your callback
                    setState(() {
                      _childState = "minus ten";
                    });
                  }),
              IconButton(
                  icon: Icon(Icons.expand_less_sharp),
                  onPressed: () {
                    this.widget.callback(
                        this.widget.counter + 10); //here is your callback
                    print(this.widget.counter.toString());
                    print(controllerString);
                    setState(() {
                      _childState = "plus ten";
                    });
                  })
            ],
          ),
          Text(_childState)
        ],
      ),
    );
  }
}

class Parent extends StatefulWidget {
  @override
  _ParentState createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  int _counter = 0;
  int check;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kcal Counter"),
      ),
      body: Container(
        color: Colors.indigo[100],
        child: Column(
          children: [
            Child(
              counter: _counter,
              callback: (childCounter) {
                //here is callback from the child
                print(childCounter);
                setState(() {
                  _counter = childCounter;
                });
              },
            ),
            Text("Kcal"),
            Center(
              child: Text(_counter.toString()),
            )
          ],
        ),
      ),
    );
  }
}

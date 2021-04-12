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
  bool state = false;

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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your Name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your Kcal goals',
              ),
            ),
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

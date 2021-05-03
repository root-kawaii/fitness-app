import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Center(child: Text("I belongs to $title"))
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 19'),
      ),
      body: Container(
        child: Center(
          child: Text("Default Scaffold Body"),
        ),
      ),
      drawer: _myDrawerWithAccountHeader(context);
  }


Widget _myDrawerWithAccountHeader(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Antedesk"),
          accountEmail: Text("myawesomeemail@example.it"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(Icons.person, size: 60),
          ),
        ),
        ListTile(
          leading: Icon(Icons.mail),
          title: Text('Item 1'),
          onTap: () {
            print('Item 1');
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.view_agenda),
          title: Text('Item 2'),
          onTap: () {
            print('Item 2');
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.local_cafe),
          title: Text('Item 3'),
          onTap: () {
            print('Item 3');
          },
        ),
      ],
    ),
  );
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: _myDrawerWithAccountHeader();
        ),
      ),
    ),
  );
}

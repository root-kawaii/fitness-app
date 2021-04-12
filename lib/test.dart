import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef void ResultCallback(List giorgio);

class CalorieForm extends StatefulWidget {
  CalorieForm({Key key, this.submitResult}) : super(key: key);
  final ResultCallback submitResult;

  @override
  _CalorieFormState createState() => _CalorieFormState();
}

class _CalorieFormState extends State<CalorieForm> {
  final nameController = TextEditingController();
  final caloriesController = TextEditingController();

  //_printLatestValue() => print(nameController.text);

  @override
  void initState() {
    super.initState();

    //nameController.addListener(_printLatestValue);
  }

  void submit() =>
      this.widget.submitResult([nameController.text, caloriesController.text]);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TextField(controller: nameController),
        TextField(controller: caloriesController),
        TextButton(onPressed: submit, child: const Text('XO'))
      ],
    ));
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    caloriesController.dispose();
    super.dispose();
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: CalorieForm(
            submitResult: (List res) => print(res),
          ),
        ),
      ),
    ),
  );
}

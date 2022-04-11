import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController numberController = new TextEditingController();
  void ButtonPressed() {
    var number = int.parse(numberController.text);
    number = number - 1;
    print(fruits.elementAt(number));
  }

  @override
  var fruits = ['Apple', 'Banana', 'Cherries', 'Durian', 'Grapes'];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            TextFormField(
              controller: numberController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter number 1 until 5',
              ),
            ),
            RaisedButton(
                child: Text(
                  "Enter",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: ButtonPressed,
                color: Colors.red,
                textColor: Colors.yellow,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.grey),
          ],
        ),
      ),
    );
  }
}

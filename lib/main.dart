import 'package:flutter/material.dart';
import 'package:widgets_basics/change_text_button.dart';
import 'package:widgets_basics/display_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Basics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var welcomeText = 'Welcome to first widgets basic assignment';

  void _changeText() {
    setState(() {
      welcomeText = 'Value have been change';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Basics'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DisplayText(displayText: welcomeText),
            ChangeTextButton(changeHandler: _changeText)
          ],
        ),
      ),
    );
  }
}

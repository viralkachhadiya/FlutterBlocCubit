import 'package:bloccubit/view/todo_user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.blue,
          primarySwatch: Colors.blue),
      home: TODOUser(),
    );
  }
}

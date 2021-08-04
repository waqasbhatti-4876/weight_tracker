import 'package:flutter/material.dart';
import 'package:flutterprojectszam/Screens/home_screen.dart';
import 'utils/const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Learning Online Courses App',
      debugShowCheckedModeBanner: false,
      theme: Constants.lightTheme(context),
      home: HomeScreen(),
    );
  }
}

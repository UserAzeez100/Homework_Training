import 'package:flutter/material.dart';
import 'package:home_work/screen/all_tasks_screen.dart';
import 'package:home_work/screen/assignment%20_1.dart';
import 'package:home_work/screen/assignment_2.dart';
import 'package:home_work/screen/assignment_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Assignment_2(),



    );
  }
}


import 'package:dikex/Screen/mantarini.dart';
import 'package:dikex/Screen/my_home_page.dart';
import 'package:dikex/Screen/nerompogies.dart';
import 'package:dikex/Screen/week_planner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        Nerompogies.routeName: (context) => const Nerompogies(),
        Mantarini.routeName:(context) => const Mantarini(),
        WeeklyPlanner.routeName:(context) => const WeeklyPlanner(),
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:my_new_demo/Navigation%20Pages/home_page.dart';
import 'package:my_new_demo/tabpages/completedpage.dart';
import 'package:my_new_demo/tabpages/upcomingpage.dart';
import 'mainpage/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MainPage(),
    );
  }
}

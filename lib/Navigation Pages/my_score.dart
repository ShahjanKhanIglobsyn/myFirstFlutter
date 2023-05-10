import 'package:flutter/material.dart';

class MyScore extends StatefulWidget {
  const MyScore({Key? key}) : super(key: key);

  @override
  State<MyScore> createState() => _MyScoreState();
}

class _MyScoreState extends State<MyScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            'My Score'
        ),
      ),
    );
  }
}


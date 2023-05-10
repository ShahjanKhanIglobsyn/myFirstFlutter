import 'package:flutter/material.dart';

class PendingBets extends StatefulWidget {
  const PendingBets({Key? key}) : super(key: key);

  @override
  State<PendingBets> createState() => _PendingBetsState();
}

class _PendingBetsState extends State<PendingBets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            'Pending Bets'
        ),
      ),
    );
  }
}

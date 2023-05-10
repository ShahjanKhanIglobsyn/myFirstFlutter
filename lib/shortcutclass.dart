import 'package:flutter/material.dart';
import 'package:my_new_demo/Navigation%20Pages/home_page.dart';
import 'package:my_new_demo/Navigation%20Pages/my_score.dart';
import 'package:my_new_demo/Navigation%20Pages/pending_bets.dart';
import 'package:my_new_demo/Navigation%20Pages/trophy_page.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {

  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _currentIndex;
    });
  }

  void _onItemTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onItemTap,
      currentIndex: _currentIndex,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white70,
      items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(
          Icons.home_filled
      ),label: 'Home'),

      BottomNavigationBarItem(icon: Icon(
          Icons.trolley
      ),
          label: 'New'
      ),

      BottomNavigationBarItem(icon: Icon(
          Icons.person_add_alt_1
      ),
          label: 'My circle'),

      BottomNavigationBarItem(icon: Icon(
          Icons.event_note_outlined
      ),
          label: 'My circle'),
    ],

    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_new_demo/shortcutclass.dart';

import '../Navigation Pages/home_page.dart';
import '../Navigation Pages/my_score.dart';
import '../Navigation Pages/pending_bets.dart';
import '../Navigation Pages/trophy_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  var _currentIndex = 0;
  // PageController ?_pageController;

  List<Widget> pagesOption = <Widget>[
    HomePage(),
    MyMatches(),
    MyScore(),
    PendingBets(),
  ];

  List<String> tabTitle = ['Baseball','Basketball','Hockey','Tennis','Cricket','Wrestling'];
  void _onTap(int Index){
    setState(() {
      _currentIndex = Index;
      // _pageController!.animateToPage(Index,
      //     duration: Duration(milliseconds: 500), curve: Curves.easeOut);

    });


  }

  @override
  void initState() {
    super.initState();
    setState(() {
      // _pageController = PageController();
      _currentIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
    appBar: AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 16,backgroundImage: Image.asset('assets/images/thor.jpg').image
              ),
            ),
          ),
          Row(
              children:[
                Container(
                    child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/icon.png'),)),
              SizedBox(width: 2,),
              Text('Betchu',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white)),
              ],
          ),
          Row(
            children:[
              IconButton(icon: Icon(Icons.notifications),onPressed: (){

              }),
              IconButton(icon: Icon(Icons.radio),onPressed: (){

              }),
            ],
          ),
        ],
      ),
    ),
      body: pagesOption.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
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
              label: 'My Matches'
          ),

          BottomNavigationBarItem(icon: Icon(
              Icons.person_add_alt_1
          ),
              label: 'My circle'),

          BottomNavigationBarItem(icon: Icon(
              Icons.event_note_outlined
          ),
              label: 'Pending Bets'),
        ],

      ),
    );
}
}

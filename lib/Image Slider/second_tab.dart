import 'package:flutter/material.dart';
import 'package:my_new_demo/tabpages/completedpage.dart';
import 'package:my_new_demo/tabpages/livepage.dart';
import 'package:my_new_demo/tabpages/upcomingpage.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> with TickerProviderStateMixin {

   late TabController myController;
   var tabIndex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {});
    myController = TabController(length: 3, vsync: this);
}
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: DefaultTabController(length: 3,
          child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.84,
              height: MediaQuery.of(context).size.height * 0.038,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: TabBar(
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.grey.shade700,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.black
                ),
                tabs: [
                  Tab(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('LIVE',style: TextStyle(fontSize: 14)),
                          SizedBox(width: 4,),
                          Image.asset('assets/images/greendotss.png',height: 10,)
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Text('UPCOMING',style: TextStyle(fontSize: 14)),
                  ),
                  Tab(
                    child: Text('COMPLETED',style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),),
            SizedBox(height: 8,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                children: [
                  LivePage(),
                  UpcomingPage(),
                  CompletedPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
      );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.limeAccent,
    );
  }
}




// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.all(Radius.circular(24))
// )
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_new_demo/Image%20Slider/image_slider.dart';
import 'package:my_new_demo/Image%20Slider/second_tab.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  late TabController _myTabController;

  final List<String> imageList = ["https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'];

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _myTabController = TabController(length: 11, vsync: this);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                child: ImageSlider(),
              ),
              SizedBox(height: 20,),
              Container(
                color: Colors.indigo,
                child: DefaultTabController(
                    length: 10 ,
                    child: TabBar(
                      controller: _myTabController,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,tabs: [
                      Tab(
                        icon: Icon(Icons.sports_basketball_rounded),
                        text: 'Baseball',
                      ),
                      Tab(
                        icon: Icon(Icons.sports_basketball_outlined),
                        text: 'Basketball',
                      ),
                      Tab(
                        icon: Icon(Icons.sports_hockey),
                        text: 'Hockey',
                      ),
                      Tab(
                        icon: Icon(Icons.sports_tennis),
                        text: 'Tennis',
                      ),
                      Tab(
                        icon: Icon(Icons.sports_cricket),
                        text: 'Cricket',
                      ),
                      Tab(
                        icon: Icon(Icons.sports_tennis),
                        text: 'Table tennis',
                      ),
                      Tab(
                        icon: Icon(Icons.square_foot),
                        text: 'Football',
                      ),
                      Tab(
                        icon: Icon(Icons.sports_hockey),
                        text: 'Ice hockey',
                      ),
                      Tab(
                        icon: Icon(Icons.golf_course),
                        text: 'Golf',
                      ),
                      Tab(
                        icon: Icon(Icons.punch_clock),
                        text: 'Boxing',
                      ),
                    ],

                    )),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Expanded(
                  child: TabBarView(
                    controller: _myTabController,
                    children: [
                      SecondTab(),
                      Container(
                          alignment: Alignment.topCenter, child: Text('Basketball',style: TextStyle(color: Colors.indigo,fontSize: 22,fontWeight: FontWeight.w600))),
                      Container(
                          alignment: Alignment.topCenter, child: Text('Hockey',style: TextStyle(color: Colors.pink,fontSize: 22,fontWeight: FontWeight.w600))),
                      Container(
                          alignment: Alignment.topCenter, child: Text('Tennis',style: TextStyle(color: Colors.black45,fontSize: 22,fontWeight: FontWeight.w600))),
                      Container(
                          alignment: Alignment.topCenter, child: Text('Cricket',style: TextStyle(color: Colors.indigo,fontSize: 22,fontWeight: FontWeight.w600),)),
                      Container(
                          alignment: Alignment.topCenter, child: Text('Table Tennis',style: TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.w600),)),
                      Container(
                          alignment: Alignment.topCenter, child: Text('Football',style: TextStyle(color: Colors.brown,fontSize: 22,fontWeight: FontWeight.w600),)),
                      Container(
                          alignment: Alignment.topCenter, child: Text('Ice Hockey',style: TextStyle(color: Colors.amber,fontSize: 22,fontWeight: FontWeight.w600),)),
                      Container(
                          alignment: Alignment.topCenter, child: Text('Golf',style: TextStyle(color: Colors.purpleAccent,fontSize: 22,fontWeight: FontWeight.w600),)),
                      Container(
                          alignment: Alignment.topCenter, child: Text('Boxing',style: TextStyle(color: Colors.indigo,fontSize: 22,fontWeight: FontWeight.w600),)),
                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}

class NewTab extends StatefulWidget {
  const NewTab({Key? key}) : super(key: key);

  @override
  State<NewTab> createState() => _NewTabState();
}

class _NewTabState extends State<NewTab> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: [
          Container(
            width: 360,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(24))),
            child: TabBar(
              controller: controller,
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
                        Text('LIVE'),
                        Icon(Icons.power)
                      ],
                    ),
                  ),
                ),
                Tab(
                  text: 'UPCOMING',
                ),
                Tab(
                  text: 'COMPLETED',
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight * 0.70,
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: TabBarView(controller: controller,
                children:  <Widget>[
            Container(
              color: Colors.green,
            ),
                  Container(
                    color: Colors.indigo,
                  ),
                  Container(
                    color: Colors.orangeAccent,
                  ),
            ]),
          )

        ]
      ),
    );
  }
}






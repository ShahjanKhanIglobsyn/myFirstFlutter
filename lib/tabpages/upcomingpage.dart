import 'package:flutter/material.dart';

class UpcomingPage extends StatefulWidget {
  const UpcomingPage({Key? key}) : super(key: key);

  @override
  State<UpcomingPage> createState() => _UpcomingPageState();
}

class _UpcomingPageState extends State<UpcomingPage> {

  List FirstTeam = ['Charlotte Hornets','Chicago Bulls','Dream Fifteen'];
  List SecondTeam = ['Chicago Bulls','Charlotte Hornets','Chicago Bulls'];
  List FirstScore = ['125','40','128'];
  List timing = ['0h 25min 25sec','3h 25min 25sec','1D 7h 25min'];
  List Time = ['25:00','15:00','20:00'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: ListView.builder(itemCount: FirstTeam.length,itemBuilder: (context, index) {
          return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: AlignmentDirectional.topCenter,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.grey.shade300
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(14)),
                            color: Colors.indigo.shade100,
                          ),
                          height: 26,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/trophy.png',height: 18),
                              SizedBox(width: 4,),
                              Text('Tournament Name',style: TextStyle(color: Colors.black,fontSize: 10)),
                            ],
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      /**Image with name*/
                                      backgroundColor: Colors.indigo.shade400,
                                      radius: 26,
                                      child: CircleAvatar(
                                        radius: 24,
                                        backgroundImage: AssetImage('assets/images/person.jpg'),
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Text(FirstTeam[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 10),)
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(timing[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.green.shade500),),
                                    SizedBox(height: 16,),
                                    Container(
                                      height: MediaQuery.of(context).size.height * 0.036,
                                      width: MediaQuery.of(context).size.width * 0.28,
                                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red.shade800,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                                      ),onPressed: (){}, child: Text(
                                        'Click to Bet',style: TextStyle(fontWeight: FontWeight.w500),
                                      )),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.indigo.shade400,
                                      radius: 26,
                                      child: CircleAvatar(
                                        radius: 24,
                                        backgroundImage: AssetImage('assets/images/person.jpg'),
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Text(SecondTeam[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 10),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );

        },),
    );
  }
}

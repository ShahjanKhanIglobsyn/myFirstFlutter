import 'package:flutter/material.dart';

class CompletedPage extends StatefulWidget {
  const CompletedPage({Key? key}) : super(key: key);

  @override
  State<CompletedPage> createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  List FirstTeam = ['Charlotte Hornets','Chicago Bulls','Dream Fifteen'];
  List SecondTeam = ['Chicago Bulls','Charlotte Hornets','Chicago Bulls'];
  List FirstScore = ['125','40','128'];
  List LastScore = ['128','98','138'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                              Text('Tournament Name',style: TextStyle(color: Colors.black,fontSize: 10))
                            ],
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                child: Row(
                                  /**Score*/
                                  children: [
                                    Text(FirstScore[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
                                    SizedBox(width: 2,),
                                    Text(':',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
                                    SizedBox(width: 2,),
                                    Text(LastScore[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
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

import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart ';

class Stats extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StatsState();
  }
}

class StatsState extends State<Stats>{
  double _pts = 60;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height*1,
                  width: width*1,
                  color: Colors.white,
                ),
                Container(
                  height: height*0.5,
                  width: width*1,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        ListTile(
                          leading: IconButton(
                            onPressed: (){
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            icon: Icon(Icons.arrow_back,
                              color: Colors.white,size: 40,),

                          ),
                        ),
                        CircleAvatar(
                          maxRadius: 115,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          child: CircleAvatar(
                            maxRadius: 85,
                            backgroundColor: Colors.white.withOpacity(0.3),
                            child: CircleAvatar(
                              maxRadius: 70,
                              backgroundColor: Colors.white,
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height*0.05,
                                    ),
                                    Text(
                                      "Your Score",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.purpleAccent,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(
                                      height: height*0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "$_pts",
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.purpleAccent,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Text(
                                          "pt",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.purpleAccent,
                                            fontWeight: FontWeight.bold
                                          ),
                                        )
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 325,
                  left: 22,
                  child: Column(
                    children: [
                      Container(
                        height: height*0.2,
                        width: width*0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0,1.0),
                                  blurRadius: 6.0
                              )
                            ]
                        ),
                      ),
                      SizedBox(
                        height: height*0.08,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    child: CircleAvatar(
                                      maxRadius: 27,
                                      backgroundColor: Colors.lightGreen,
                                      child: Center(child: Icon(Icons.refresh_sharp,color: Colors.white,size: 40,)),
                                    ),
                                    onTap: (){
                                      debugPrint("Play Again!");
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Play Again",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: height*0.04,
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    child: CircleAvatar(
                                      maxRadius: 27,
                                      backgroundColor: Colors.blueAccent,
                                      child: Center(child: Icon(Icons.file_copy_outlined,color: Colors.white,size: 40,)),
                                    ),
                                    onTap: (){
                                      debugPrint("Generate PDF");
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Generate PDF",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width*0.05,
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    child: CircleAvatar(
                                      maxRadius: 27,
                                      backgroundColor: Colors.orangeAccent,
                                      child: Center(child: Icon(Icons.visibility_outlined,color: Colors.white,size: 30,)),
                                    ),
                                    onTap: (){
                                      debugPrint("Review Answer");
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Review Answer",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: height*0.04,
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    child: CircleAvatar(
                                      maxRadius: 27,
                                      backgroundColor: Colors.pinkAccent,
                                      child: Center(child: Icon(Icons.home_outlined,color: Colors.white,size: 40,)),
                                    ),
                                    onTap: (){
                                      debugPrint("Home");
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Home",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width*0.05,
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    child: CircleAvatar(
                                      maxRadius: 27,
                                      backgroundColor: Colors.purple,
                                      child: Center(child: Icon(Icons.share,color: Colors.white,size: 30,)),
                                    ),
                                    onTap: (){
                                      debugPrint("Share Score!");
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Share Score",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: height*0.04,
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    child: CircleAvatar(
                                      maxRadius: 27,
                                      backgroundColor: Colors.blueGrey,
                                      child: Center(child: Icon(Icons.leaderboard,color: Colors.white,size: 30,)),
                                    ),
                                    onTap: (){
                                      debugPrint("leaderboard");
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Leaderboard",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
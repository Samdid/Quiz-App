import 'package:flutter/material.dart';
import 'package:quiz_app/stats.dart';

class Question extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return QuestionState();
  }
}

class QuestionState extends State<Question>{
  double _qn = 4;
  String _op1 = "come";
  String _op2 = "comes";
  String _op3 = "are coming";
  String _op4 = "came";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: height*1,
                width: width*1,
                color: Colors.white,
              ),
              Container(
                height: height*0.35,
                width: width*1,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListTile(
                    leading: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_back,
                      color: Colors.white,size: 40,),

                    ),
                    trailing: IconButton(
                      onPressed: (){
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Stats()),
                          );
                        });
                      },
                      icon: Icon(Icons.stacked_bar_chart,color: Colors.white,size: 40,),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 160,
                left: 22,
                child: Container(
                  height: height*0.30,
                  width: width*0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20),topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0,1.0),
                            blurRadius: 6.0
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height*0.15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25,
                            right: 25
                        ),
                        child: Expanded(
                          child: Text(
                            "How many students in your class ____ from Korea?",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center
                            ),

                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 120,
                left: 153,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 40,
                      minRadius: 40,
                      child: Center(
                        child: SizedBox(
                          height: 70,
                          width: 70,

                          child: CircularProgressIndicator(
                            strokeWidth: 5.0,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.purpleAccent),
                            backgroundColor: Colors.white,
                            value: 0.6,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Question $_qn/05",
                      style: TextStyle(
                        color: Colors.purpleAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 147,
                left: 202,
                child: Center(
                  child: Text(
                    "18",
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 480,

                child: Padding(
                  padding: const EdgeInsets.only(left: 52,right: 52),
                  child: Column(

                    children: [
                       InkWell(
                         child: Container(
                            height: height*0.06,
                            width: width*0.75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              border: Border.all(
                              color: Colors.grey.withOpacity(0.4),
                              width: 2.5,

                            ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    _op1,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(width: width*0.50,),
                                CircleAvatar(
                                  maxRadius: 10,
                                  minRadius: 10,
                                  backgroundColor:Colors.grey.withOpacity(0.4),
                                )
                              ],
                            ),
                          ),
                         onTap: (){
                           debugPrint(_op1);
                         },
                       ),
                      SizedBox(height: height*0.02,),
                      InkWell(
                        child: Container(
                          height: height*0.06,
                          width: width*0.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.4),
                              width: 2.5,

                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  _op2,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.50,),
                              CircleAvatar(
                                maxRadius: 10,
                                minRadius: 10,
                                backgroundColor:Colors.grey.withOpacity(0.4),
                              )
                            ],
                          ),
                        ),
                        onTap: (){
                          debugPrint(_op2);
                        },
                      ),
                      SizedBox(height: height*0.02,),
                      InkWell(
                        child: Container(
                          height: height*0.06,
                          width: width*0.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.4),
                              width: 2.5,

                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  _op3,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.35,),
                              CircleAvatar(
                                maxRadius: 10,
                                minRadius: 10,
                                backgroundColor:Colors.grey.withOpacity(0.4),
                              )
                            ],
                          ),

                        ),
                        onTap: (){
                          debugPrint(_op3);
                        },
                      ),
                      SizedBox(height: height*0.02,),
                      InkWell(
                        child: Container(
                          height: height*0.06,
                          width: width*0.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.4),
                              width: 2.5,

                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  _op4,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.50,),
                              CircleAvatar(
                                maxRadius: 10,
                                minRadius: 10,
                                backgroundColor:Colors.grey.withOpacity(0.4),
                              )
                            ],
                          ),
                        ),
                        onTap: (){
                          debugPrint(_op4);
                        },
                      )
                    ],
                  ),
                ),
              ),



            ],
          ),
        ],
      ),
    );
  }
}
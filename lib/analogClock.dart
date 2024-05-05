import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const TimerDailyTask());
}

class TimerDailyTask extends StatefulWidget {
  const TimerDailyTask({super.key});

  @override
  State<TimerDailyTask> createState() => _TimerDailyTaskState();
}

class _TimerDailyTaskState extends State<TimerDailyTask> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();

        switch (dateTime.weekday) {
          case 1:
            day = 'Monday';
            break;
          case 2:
            day = 'Tuesday';
            break;
          case 3:
            day = 'Wednesday';
            break;
          case 4:
            day = 'Thursday';
            break;
          case 5:
            day = 'Friday';
            break;
          case 6:
            day = 'Saturday';
            break;
          case 7:
            day = 'Sunday';
        }



        switch (dateTime.month) {
          case 1:
            month = 'January';
            break;
          case 2:
            month = 'February';
            break;
          case 3:
            month = 'March';
            break;
          case 4:
            month = 'April';
            break;
          case 5:
            month = 'May';
            break;
          case 6:
            month = 'June';
            break;
          case 7:
            month = 'July';
            break;
          case 8:
            month = 'August';
            break;
          case 9:
            month = 'September';
            break;
          case 10:
            month = 'October';
            break;
          case 11:
            month = 'November';
            break;
          case 12:
            month = 'December';
            break;
        }


        if(dateTime.hour>11){
          time = 'PM';
        }
        else{
          time = 'AM';
        }
      });
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xffA4AAB6),
                        Color(0xffA4AAB6),
                        Color(0xffD7D9DE),
                        Color(0xffA4AAB6),
                        Color(0xffA4AAB6),
                      ]
                  )
              ),
              alignment: Alignment.center,
              child: Stack(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 100,left: 70
                      ),
                      child: Text('  Make every\nmoment count.',style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 50,
                        color:Color(0xff30353C),

                      ),),
                    ),

                    // T
                    Center(
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: RadialGradient(
                                colors:[
                                  Color(0xff4e5359),
                                  Color(0xff4e5359),
                                  Color(0xff30353C),
                                  Color(0xff30353C),
                                  Color(0xff4e5359),
                                  Color(0xff4e5359),
                                ]

                            ),
                            border: Border.all(

                                color: Color(0xff30353C),
                                width: 10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff30353C),
                                  offset: Offset(30,0),
                                  spreadRadius: 3,
                                  blurRadius: 20
                              )
                            ]
                        ),
                      ),
                    ),

                    ...List.generate(60, (index) => Center(
                      child: Transform.rotate(
                          angle: ((index+1) * 6 * pi)/180,
                          child: ((index+1)%15==0)
                              ? const VerticalDivider(
                            color: Colors.white,
                            endIndent: 321,
                            indent: 580,
                            thickness: 3.5,
                          )

                              : const VerticalDivider(
                            endIndent: 321,
                            indent: 595,
                            thickness: 2,
                          )
                      ),
                    ),),

                    Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff191E24),
                        ),
                      ),
                    ),

                    Center(
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffB7BCC2),
                        ),
                      ),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: (dateTime.hour*30*pi)/180,
                        child: VerticalDivider(
                          thickness: 5+0.5,
                          color: Color(0xffB7BCC2),
                          indent: 400,
                          endIndent: 460,
                        ),
                      ),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: (dateTime.second*6*pi)/180,
                        child: VerticalDivider(
                          thickness: 2+0.5,
                          color: Color(0xffB7BCC2),
                          indent: 370,
                          endIndent: 460,
                        ),
                      ),
                    ),

                    Center(
                      child: Transform.rotate(
                        angle: (dateTime.minute*6*pi)/180,
                        child: VerticalDivider(
                          thickness: 4+0.5,
                          color: Color(0xffB7BCC2),
                          indent: 350,
                          endIndent: 460,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 630,
                              left: 150
                          ),
                          child: Row(
                            children: [
                              Text('${dateTime.hour%12}:0${dateTime.minute}:${dateTime.second} ',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40
                              ),),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),

                                child: Text('$time',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 30
                                ),),
                              ),
                            ],
                          ),
                        ),
                        Text('$day , $month ${dateTime.day}',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 20
                        ),),
                        Container(
                          margin: EdgeInsets.only(
                              top: 80
                          ),
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              color:Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search,color: Color(0xff30353C),
                              ),
                              Text('Search',style: TextStyle(
                                  color: Color(0xff30353C)
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          height: 80,
                          width: 400,
                          decoration: BoxDecoration(
                            // color: Colors.white
                          ),

                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.home_outlined,color:  Color(0xff4e5359),size: 35,),
                                Icon(Icons.watch_later_rounded,color: Color(0xff30353C),size: 40,),
                                Icon(Icons.person_outline_outlined,color:  Color(0xff4e5359),size: 35,),
                              ]
                          ),
                        )
                      ],
                    ),

                  ]
              ),
            )
        ),
      ),
    );
  }
}



DateTime dateTime = DateTime.now();

String day = '';

String time = '';
String month = '';



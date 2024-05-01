import 'dart:async';

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
          backgroundColor: Colors.black,
          body: Container(
            child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/image/moon.png',
                    ),
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 50,
                            right: 200
                        ),
                        child: Text(
                          '$day',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20
                        ),
                        child: Row(
                          children: [
                            Text(
                              '${dateTime.hour%12}:${dateTime.minute}:${dateTime.second} ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10
                              ),
                              child: Text(
                                '$time',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 350,
                            top: 10
                        ),
                        child:
                        Text(
                          '$month ${dateTime.day}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),


                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 550
                        ),
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,color: Colors.white,
                            ),
                            Text('Search',style: TextStyle(
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20
                        ),
                        height: 80,
                        width: 400,
                        decoration: BoxDecoration(
                          // color: Colors.white
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(borderRadius:
                              BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/image/camera.png'))),
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(borderRadius:
                              BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/image/dailer.png'))),
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(borderRadius:
                              BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/image/msg.png'))),
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(borderRadius:
                              BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/image/chrome.png'))),
                            ),
                          ],
                        ),
                      )

                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}



DateTime dateTime = DateTime.now();

String day = '';

String time = '';
String month = '';

int hour = 0;
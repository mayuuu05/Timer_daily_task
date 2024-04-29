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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_open),
            color: Colors.white,
          ),
          title: Text(
            'Buttons',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ElevatedButton',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'TextButton',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu_open,
                    color: Colors.black,
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'IconButton',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
              FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  )),
              DropdownButton(
                value: 0,
                items: [ DropdownMenuItem(
                  value: 0,
                  child: Text(
                    "DropdownButton",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ),],
                onChanged: (value) {

                },
              ),
              FilledButton(
                  onPressed: () {},
                  child: Text(
                    'FilledButton',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

# timer_daily_task

# Button Task
<p>
  <img src = "https://github.com/mayuuu05/Timer_daily_task/assets/149376263/afffc3fb-31f1-4788-aa6d-bed5888dbfe1" height=35% width=22%>
<a href="https://github.com/mayuuu05/Timer_daily_task/blob/master/lib/buttons.dart">Click here</a>
</p>



# Asynchronous Programming


### Que-1 What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task. 

### Que-2 What is Future Class ?

In Dart, a Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available. The Future can be in one of three states: uncompleted, completed with a value, or completed with an error with talk about in detail in other blog.

### Que-3 What is Duration class & Future.delayed() constructor with Example ?


## Duration Class

A span of time, such as 27 days, 4 hours, 12 minutes, and 3 seconds. A Duration represents a difference from one point in time to another.

The duration may be "negative" if the difference is from a later time to an earlier.


## Example 



```bash
 import 'dart:async';
 import 'dart:io';

 void main(){
  Timer(
    Duration(seconds: 3),
    (){
      print("Hello Dart");
    }
  );
 }
```

## Future.delayed()

The Future. delayed mechanism is straightforward. Simply put, it allows you to trigger an asynchronous function after a particular delay.

## Example 



```bash
 import 'dart:async';
 import 'dart:io';

 void main(){
  Timer(
    Duration(seconds: 3),
    (){
      print("Hello Future");
    }
  );
 }
```

### Que-4 What is the Use of the async & await keyword?

## Async and Await in Flutter

In Flutter, async and await are used to perform asynchronous operations in a more readable and structured manner. They are part of the Dart language, on which Flutter is built.

 
## async keyword

The async keyword is used to mark a function as asynchronous.


## await keyword

The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed. 




### Que-5 What is Recursion ? With Example. 

Recursion in any programming language means a function making a call to itself. It is used to solve large complex problems by breaking them into smaller subproblems. 

=> The function calls itself repeatedly until a base   condition is reached.

## Example 



```bash
 import 'dart:async';
 import 'dart:io';

 void main(){
  Timer.periodic(Duration(seconds: 3), (timer) {
    print("Hello Flutter");
   });
 }
 ```

### Que-6 What is Timer class with example ? 
The Timer class is used to create a one-time or periodic timer. It allows you to schedule a callback function to be executed after a specified duration.

 It's useful for scenarios where you need to execute code at regular intervals or after a certain delay.

## Example 



```bash
 import 'dart:async';
 import 'dart:io';

 void main(){
  Timer(Duration(seconds: 3), () {
    print("Hello World");
  });
 }
 ```

### Que-7 What is Timer.periodic and use with Example?
Timer.periodic is a constructor of the Timer class that creates a periodic timer. It repeatedly fires a callback function at specified intervals until it is canceled

## Example 



```bash
 import 'dart:async';
 import 'dart:io';

 void main(){
  Timer.periodic(Duration(seconds: 3), (timer) {
    print("Hello Dart");
   });
 }
 ```


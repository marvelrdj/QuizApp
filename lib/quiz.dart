import 'package:flutter/material.dart';
import 'package:quiz_app/first_screen.dart';
import 'package:quiz_app/qustion.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //initstate will run after the object created _QuizState
  //we add ? to activestate can be null

  var activeScreen =
      'start_screen'; //this will reducwe the code and not need the initstate

  void switchScreen() {
    setState(() {
      //IT WORKS as the loop state in flutter ,it will reexecut build method
      activeScreen = 'Qustion_screen';
    }); //this will run when action needed to be changed
  }

  @override
  Widget build(context) {
    Widget screenWidget = FirstScreen(switchScreen);
    if (activeScreen == 'Qustion_screen') {
      screenWidget = QustionScreen();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 10, 150),
              Color.fromARGB(255, 170, 15, 170),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget, //ternary expression
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/qustions.dart';

class QustionScreen extends StatefulWidget {
  QustionScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QustionScreen> createState() {
    return _QustionScreen();
  }
}

class _QustionScreen extends State<QustionScreen> {
  var currentQustionIndex = 0;

  void answerQustion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    //currentQustionIndex = currentQustionIndex + 1;
    setState(() {
      currentQustionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentquestion = questions[currentQustionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 220, 134, 241),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            ...currentquestion.getShuffledAnswers().map((answer) {
              //we can use it by get ShuffledAnswers without ()
              return answerbutton(
                answerText: answer,
                onTap: () {
                  answerQustion(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}

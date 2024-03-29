import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 1.0, //this used to reduce transprant by wrapping
            child: Image.asset(
              'assets/logo.png',
              width: 200,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            'HI EVERY ONE I AM UZUMAKI NARUTO',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Color.fromARGB(255, 244, 191, 239),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Lets Start the Quiz ! ',
            style: TextStyle(
              color: Color.fromARGB(255, 244, 191, 239),
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 96, 1, 120),
              backgroundColor: const Color.fromARGB(125, 193, 193, 193),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            icon: Icon(
              Icons.arrow_right_alt,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: Text(
              'Start Quiz',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          )
        ],
      ),
    );
  }
}

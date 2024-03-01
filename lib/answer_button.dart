import 'package:flutter/material.dart';

class answerbutton extends StatelessWidget {
  answerbutton({
    super.key,
    required this.answerText,
    required this.onTap,
  }); //if we put answertext and ontap in super.key near it with required it is not optional
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: Color.fromARGB(255, 81, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}

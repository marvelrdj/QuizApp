import 'package:flutter/material.dart';

class QustionScreen extends StatefulWidget {
  QustionScreen({super.key});
  @override
  State<QustionScreen> createState() {
    return _QustionScreen();
  }
}

class _QustionScreen extends State<QustionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The question...'),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 3'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 4'),
          ),
        ],
      ),
    );
  }
}

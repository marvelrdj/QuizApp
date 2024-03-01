import 'package:flutter/material.dart';

class QustionSummary extends StatelessWidget {
  QustionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            //in here we return the list type to widget (type casting) map used to type cast the one to other
            return Row(
              children: [
                Text(
                  ((data['question_index'] as int) + 1)
                      .toString(), //here we increment the qustion to show in result page as it is type casting
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      SizedBox(
                        height: 20,
                      ),
                      Text(data['user_answer'] as String),
                      SizedBox(
                        height: 20,
                      ),
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1)
                  .toString()), //typecasting "(x as int)""
              Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(height: 5,),
                  Text('Correct answer: ${data['correct_answer']}'),
                  Text('Your answer: ${data['user_answer']}'),
                ],
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}

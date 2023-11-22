import 'package:flutter/material.dart';
import 'package:second_app/date/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_id': i,
          'question_text': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('You asnwered X out of Y questions correctly!'),
              const SizedBox(
                height: 25,
              ),
              const Text('You asnwered X out of Y questions correctly!'),
              const SizedBox(
                height: 25,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Restart Quiz!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

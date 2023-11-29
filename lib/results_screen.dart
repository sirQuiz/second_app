import 'package:flutter/material.dart';
import 'package:second_app/quiz.dart';
import 'package:second_app/date/questions.dart';
import 'package:second_app/result_answers.dart';

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
  Widget build(BuildContext context) {
    final summaryData            = getSummaryData();
    final totalQuestionsAmount   = questions.length;
    final correctQuestionsAmount = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('You asnwered $correctQuestionsAmount out of $totalQuestionsAmount questions correctly!'),
              const SizedBox(
                height: 25,
              ),
              ResultAnswers(summaryData),
              const SizedBox(
                height: 25,
              ),
              TextButton(
                onPressed: () {
                  
                },
                child: const Text('Restart Quiz!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

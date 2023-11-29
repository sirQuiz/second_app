import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultAnswers extends StatelessWidget {
  const ResultAnswers(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  List getSummaryCorrectAnswers() {
  final List correctAnswers = [];

    for (var i = 0; i < summaryData.length; i++) {
      
    }

    return correctAnswers;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(
                    ((data['question_id'] as int) + 1).toString(),
                    style: GoogleFonts.adamina(
                      fontSize: 24,
                      color: Colors.amber.shade400,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(data['question_text'] as String),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answer'] as String),
                        Text(data['correct_answer'] as String),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

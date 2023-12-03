import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_app/result_answers.dart';

class ResultItem extends StatelessWidget {
  const ResultItem(this.summaryItem, {super.key});

  final Map<String, Object> summaryItem;

  @override
  Widget build(BuildContext context) {
    final correctIndecator =
        summaryItem['user_answer'] == summaryItem['correct_answer'];

    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: correctIndecator ? Colors.green : Colors.red,
              shape: BoxShape.circle,
            ),
            margin: const EdgeInsets.only(right: 20.0),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                ((summaryItem['question_id'] as int) + 1).toString(),
                style: GoogleFonts.actor(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  summaryItem['question_text'] as String,
                  style: GoogleFonts.actor(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  summaryItem['user_answer'] as String,
                  style: GoogleFonts.actor(
                    fontSize: 14,
                    color: correctIndecator ? Colors.green : Colors.red,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  summaryItem['correct_answer'] as String,
                  style: GoogleFonts.actor(
                    fontSize: 14,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

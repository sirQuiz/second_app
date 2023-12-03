import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_app/result_item.dart';

class ResultAnswers extends StatelessWidget {
  const ResultAnswers(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return ResultItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}

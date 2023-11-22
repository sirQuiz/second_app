import 'package:flutter/material.dart';
import 'package:second_app/answer_button.dart';
import 'package:second_app/date/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestionIndex(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(contentx) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.adamina(color: Colors.white70, fontSize: 22),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),
              ...currentQuestion.getShuffledList().map(
                (item) {
                  return AnswerButton(
                    buttonText: item,
                    onTap: () {
                      answerQuestionIndex(item);
                    },
                  );
                },
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

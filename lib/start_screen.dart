import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(190, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Learn Flutter the fun way!',
              style: TextStyle(fontSize: 22, color: Colors.white)),
          const SizedBox(
            height: 15,
          ),
          OutlinedButton(
            onPressed: () {
              switchScreen();
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(width: .5, color: Colors.white),
            ),
            child: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

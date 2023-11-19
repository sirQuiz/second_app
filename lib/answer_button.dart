import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.buttonText, required this.onTap});

  final String buttonText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: const Color.fromARGB(255, 66, 41, 156),
          foregroundColor: Colors.white70,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(4))),
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
      ),
    );
  }
}

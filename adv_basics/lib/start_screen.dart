import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(132, 212, 224, 253),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(
              color: Color.fromARGB(255, 229, 237, 229),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 210, 208, 173)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start quiz'),
          )
        ],
      ),
    );
  }
}

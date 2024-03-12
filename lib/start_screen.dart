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
            color: Colors.white12,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn flutter the "fun" way!',
            style: TextStyle(
              color: Color.fromARGB(255, 241, 237, 241),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.rocket_launch_outlined),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

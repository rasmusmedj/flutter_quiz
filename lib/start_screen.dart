import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: Colors.white30,
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn flutter the "fun" way!',
            style: GoogleFonts.inconsolata(
              color: const Color.fromARGB(255, 241, 237, 241),
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
            label: Text(
              'Start Quiz',
              style: GoogleFonts.inconsolata(
                color: const Color.fromARGB(255, 241, 237, 241),
                fontSize: 24,
                fontWeight:FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

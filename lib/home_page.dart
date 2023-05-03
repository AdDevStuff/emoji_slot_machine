import 'package:flutter/material.dart';
import 'dart:math';

var data = {
  0: '🐱',
  1: '🍏',
  2: '🧁',
  3: '💣',
  4: '🏆',
  5: '🪐',
  6: '🌸',
};
var firstRandomNr = 1;
var secondRandomNr = 6;
var thirdRandomNr = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPlayPressed() {
    setState(() {
      firstRandomNr = (Random().nextInt(6));
      secondRandomNr = (Random().nextInt(6));
      thirdRandomNr = (Random().nextInt(6));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data[firstRandomNr]!, style: const TextStyle(fontSize: 80)),
            const SizedBox(width: 30),
            Text(data[secondRandomNr]!, style: const TextStyle(fontSize: 80)),
            const SizedBox(width: 30),
            Text(data[thirdRandomNr]!, style: const TextStyle(fontSize: 80)),
          ],
        ),
        const SizedBox(height: 160),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            backgroundColor: const Color.fromARGB(255, 144, 103, 198),
          ),
          onPressed: onPlayPressed,
          child: const Text(
            'Play',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 252, 255, 252),
            ),
          ),
        ),
      ],
    );
  }
}

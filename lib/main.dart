import 'package:flutter/material.dart';
import 'package:emoji_slot_machine/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: HomePage(),
          ),
        ),
      ),
    );
  }
}

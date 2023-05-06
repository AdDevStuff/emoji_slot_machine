import 'package:flutter/material.dart';
import 'components/my_button.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';

var data = {
  0: 'assets/emoji/0.svg',
  1: 'assets/emoji/1.svg',
  2: 'assets/emoji/2.svg',
  3: 'assets/emoji/3.svg',
  4: 'assets/emoji/4.svg',
  5: 'assets/emoji/5.svg',
  6: 'assets/emoji/6.svg',
  7: 'assets/emoji/7.svg',
};
var firstRandomNr = 0;
var secondRandomNr = 0;
var thirdRandomNr = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onTap() {
    setState(() {
      firstRandomNr = (Random().nextInt(8));
      secondRandomNr = (Random().nextInt(8));
      thirdRandomNr = (Random().nextInt(8));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 80, child: SvgPicture.asset(data[firstRandomNr]!)),
              const SizedBox(width: 40),
              SizedBox(
                  width: 80, child: SvgPicture.asset(data[secondRandomNr]!)),
              const SizedBox(width: 40),
              SizedBox(
                  width: 80, child: SvgPicture.asset(data[thirdRandomNr]!)),
            ],
          ),
          const SizedBox(height: 150),
          MyButton(onTap: onTap, text: 'GO'),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

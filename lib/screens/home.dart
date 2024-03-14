import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dice_roller/widgets/button.dart';

var randomizer = Random();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentdice = 2;

  onPressed() {
    setState(() {
      currentdice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
                image: AssetImage('assets/dice$currentdice.png'),
                width: width * 0.5),
            SizedBox(
              height: height * 0.04,
            ),
            CustomElevatedButton(
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}

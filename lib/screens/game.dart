import 'dart:math';

import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:bagaduli/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  var size;
  int score = 0;
  int remainingBalls = 7;
  double movingBallBottom = 75, movingBallRight = 34;
  bool ballMoving = false, animationVisible = true;

  @override
  void initState() {
    super.initState();
    prepare();
  }

  void prepare() async {
    await Future.delayed(Duration.zero);
    Constants.showSnackBar('Tap the screen to shoot the ball!', false, context);
  }

  Widget getBall() {
    return Container(
      height: 16,
      width: 16,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
    );
  }

  void moveBall() async {
    Audio.load('assets/sound_ball_motion_start.wav')
      ..play()
      ..dispose();
    double increment = 0;
    setState(() {
      animationVisible = false;
      movingBallBottom = 75;
      movingBallRight = 34;
    });
    for (int i = 1; i <= 230; i++) {
      await Future.delayed(const Duration(milliseconds: 5));
      setState(() {
        movingBallBottom += 2;
        if (i > 150) {
          increment += 0.024;
          movingBallRight += (increment * increment);
          ;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.colorDark,
      body: GestureDetector(
        onTap: () {
          moveBall();
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/gameBg.png',
              height: size.height,
              width: size.width,
              alignment: Alignment.bottomCenter,
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'PRACTICE\nMODE',
                      style: Constants.tsbw28,
                    ),
                    const Spacer(),
                    Text(
                      'SCORE\n$score',
                      textAlign: TextAlign.end,
                      style: Constants.tsbw28,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: movingBallBottom,
              right: movingBallRight,
              child: getBall(),
            ),
            Positioned(
              bottom: 42,
              left: 34,
              child: Row(
                children: [
                  for (int i = 1; i <= remainingBalls; i++)
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: getBall(),
                    ),
                ],
              ),
            ),
            Visibility(
                visible: animationVisible,
                child: Lottie.asset('assets/animation_play.json')),
          ],
        ),
      ),
    );
  }
}

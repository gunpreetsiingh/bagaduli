import 'dart:math';

import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:avatar_glow/avatar_glow.dart';
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
  double powerUpWidth = 0;
  int speedFactor = 0;
  bool ballMoving = false, dimBackground = true;

  @override
  void initState() {
    super.initState();
    // prepare();
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
      movingBallBottom = 75;
      movingBallRight = 34;
    });
    int speed = 10 - speedFactor;
    if(speed < 2) {
      speed = 2;
    }
    for (int i = 1; i <= 230; i++) {
      await Future.delayed(Duration(milliseconds: (speed)));
      setState(() {
        movingBallBottom += 2;
        if (i > 150) {
          increment += 0.024;
          movingBallRight += (increment * increment);
          ;
        }
      });
    }
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      powerUpWidth = 0;
      movingBallBottom = 75;
      movingBallRight = 34;
      dimBackground = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.colorDark,
      body: Stack(
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
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 15),
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
            visible: dimBackground,
            child: Container(
              height: size.height,
              width: size.width,
              color: Colors.black.withOpacity(0.75),
            ),
          ),
          Visibility(
            visible: dimBackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Touch and hold the trigger\nto power up',
                  textAlign: TextAlign.center,
                  style: Constants.tsbw16,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 20,
                  width: 250,
                  padding: const EdgeInsets.all(3),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    height: 14,
                    width: powerUpWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AvatarGlow(
                  glowColor: Constants.colorLight,
                  endRadius: 60.0,
                  duration: const Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: const Duration(milliseconds: 100),
                  child: GestureDetector(
                    onTapDown: (details) async {
                      while (powerUpWidth < 244) {
                        await Future.delayed(const Duration(milliseconds: 7));
                        setState(() {
                          powerUpWidth += 1;
                        });
                      }
                      if (dimBackground) {
                        setState(() {
                          speedFactor = ((powerUpWidth / 244) * 10).toInt();
                          powerUpWidth = 0;
                          dimBackground = false;
                        });
                        moveBall();
                      }
                    },
                    onTapUp: (details) {
                      setState(() {
                        speedFactor = ((powerUpWidth / 244) * 10).toInt();
                        powerUpWidth = 0;
                        dimBackground = false;
                      });
                      moveBall();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Constants.colorDark,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.bolt_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

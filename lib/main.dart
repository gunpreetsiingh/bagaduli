import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:bagaduli/constants.dart';
import 'package:bagaduli/screens/game.dart';
import 'package:bagaduli/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bagaduli Live',
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  var size;
  double value1 = 1, value2 = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }

  void navigate() async {
    await Future.delayed(Duration.zero);
    Audio.load('assets/intro.mp3')
      ..play()
      ..dispose();
    await Future.delayed(const Duration(milliseconds: 1500));
    setState(() {
      value1 = 0;
      value2 = 1;
    });
    await Future.delayed(const Duration(milliseconds: 1500));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => const Home()));
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.colorDark,
      body: Stack(
        children: [
          AnimatedOpacity(
            opacity: value1,
            duration: const Duration(seconds: 1),
            child: Image.asset(
              'assets/splash1.png',
              height: size.height,
              width: size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          AnimatedOpacity(
            opacity: value2,
            duration: const Duration(seconds: 1),
            child: Image.asset(
              'assets/splash2.png',
              height: size.height,
              width: size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}

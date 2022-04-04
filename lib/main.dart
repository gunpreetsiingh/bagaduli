import 'package:bagaduli/constants.dart';
import 'package:bagaduli/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      backgroundColor: Constants.colorDarkRed,
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

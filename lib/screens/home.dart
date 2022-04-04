import 'package:bagaduli/constants.dart';
import 'package:bagaduli/screens/account.dart';
import 'package:bagaduli/screens/add_cash.dart';
import 'package:bagaduli/screens/bonus.dart';
import 'package:bagaduli/screens/my_games.dart';
import 'package:bagaduli/screens/notifications.dart';
import 'package:bagaduli/screens/refer_and_earn.dart';
import 'package:bagaduli/screens/videos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 1,
              colors: [
                Constants.colorRed,
                Constants.colorDarkRed,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                child: Text(
                  '23216 PLAYERS ONLINE',
                  style: Constants.tsbw16,
                ),
              ),
              Container(
                height: 529,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Account()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://brisksmsuganda.com/wp-content/uploads/2021/05/placeholder.png'),
                                foregroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                                radius: 16,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset('assets/brandingWhite.png'),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Notifications()));
                            },
                            child: Image.asset('assets/notification.png'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/cashGame.png'),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Cash Game',
                                    style: Constants.tsbd14,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/practiceMode.png'),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Practice Mode',
                                    style: Constants.tsbw14,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/tournament.png'),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Tournament',
                                    style: Constants.tsbw16,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                      gradient: RadialGradient(
                                        radius: 1,
                                        colors: [
                                          Constants.colorRed,
                                          Constants.colorDarkRed,
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      'DEALS',
                                      textAlign: TextAlign.center,
                                      style: Constants.tsbw28,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '6537 PLAYING ONLINE',
                                      textAlign: TextAlign.center,
                                      style: Constants.tsbd12,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      color: Constants.colorDarkRed,
                                    ),
                                    child: Text(
                                      'SELECT TABLE',
                                      textAlign: TextAlign.center,
                                      style: Constants.tsbw22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                      gradient: RadialGradient(
                                        radius: 1,
                                        colors: [
                                          Constants.colorRed,
                                          Constants.colorDarkRed,
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      '1000 POOL',
                                      textAlign: TextAlign.center,
                                      style: Constants.tsbw28,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '16679 PLAYING ONLINE',
                                      textAlign: TextAlign.center,
                                      style: Constants.tsbd12,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      color: Constants.colorDarkRed,
                                    ),
                                    child: Text(
                                      'SELECT TABLE',
                                      textAlign: TextAlign.center,
                                      style: Constants.tsbw22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(50),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'ADVERTISEMENT',
                          textAlign: TextAlign.center,
                          style: Constants.tsbd14,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Videos()));
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Constants.colorRed,
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'VIDEO TUTORIALS',
                            textAlign: TextAlign.center,
                            style: Constants.tsbw14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyGames()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/myGames.png'),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'MY\nGAMES',
                              textAlign: TextAlign.center,
                              style: Constants.tsbw14,
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ReferAndEarn()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/refer.png'),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'REFER & EARN\n₹ 1000',
                              textAlign: TextAlign.center,
                              style: Constants.tsbw14,
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Bonus()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/bonus.png'),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'BONUS\n₹ 900',
                              textAlign: TextAlign.center,
                              style: Constants.tsbw14,
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AddCash()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/addCash.png'),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'ADD CASH\n₹ 587',
                              textAlign: TextAlign.center,
                              style: Constants.tsbw14,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

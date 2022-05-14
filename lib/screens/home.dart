import 'package:bagaduli/constants.dart';
import 'package:bagaduli/screens/account.dart';
import 'package:bagaduli/screens/add_cash.dart';
import 'package:bagaduli/screens/bonus.dart';
import 'package:bagaduli/screens/deals.dart';
import 'package:bagaduli/screens/game.dart';
import 'package:bagaduli/screens/my_games.dart';
import 'package:bagaduli/screens/notifications.dart';
import 'package:bagaduli/screens/pool.dart';
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
  List<double> borderWidth = [1, 2, 1, 1];
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // startBorderAnimation();
  }

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
                Constants.colorLight,
                Constants.colorDark,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Constants.colorLight,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                child: Text(
                  '23216 PLAYERS ONLINE',
                  style: Constants.tsbw14,
                ),
              ),
              Container(
                height: 542,
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
                                border: Border.all(
                                    color: Constants.colorGolden, width: 2),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: CircleAvatar(
                                backgroundColor: Constants.colorDark,
                                foregroundImage: const NetworkImage(
                                    'https://images.unsplash.com/photo-1541290431335-1f4c2152e899?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                                radius: 16,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/dashboard-branding.png',
                            height: 75,
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Notifications()));
                            },
                            child: Icon(
                              Icons.notifications_active_rounded,
                              color: Constants.colorGolden,
                              size: 32,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Videos()));
                            },
                            child: Icon(
                              Icons.play_circle_outline_rounded,
                              color: Constants.colorGolden,
                              size: 32,
                            ),
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
                          // border: Border.all(
                          //   color: Constants.colorGolden,
                          //   width: 2,
                          // ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = 0;
                                });
                              },
                              child: Opacity(
                                opacity: selectedIndex == 0 ? 1 : 0.4,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Constants.colorGolden,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/cashGame.png'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cash Game',
                                        style: Constants.tsbb14,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = 1;
                                });
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Game()));
                              },
                              child: Opacity(
                                opacity: selectedIndex == 1 ? 1 : 0.4,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Constants.colorGolden,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.sports_baseball_rounded,
                                        color: Colors.black,
                                        size: 26,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Practice Mode',
                                        style: Constants.tsbb14,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = 2;
                                });
                              },
                              child: Opacity(
                                opacity: selectedIndex == 2 ? 1 : 0.4,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Constants.colorGolden,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.workspace_premium_rounded,
                                        color: Colors.black,
                                        size: 26,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Tournament',
                                        style: Constants.tsbb16,
                                      )
                                    ],
                                  ),
                                ),
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
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Deals()));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/dashboard-tile-1.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(
                                        top: 60,
                                        bottom: 40,
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Text(
                                        'DEALS',
                                        textAlign: TextAlign.center,
                                        style: Constants.tsbg28,
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
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 15,
                                      ),
                                      child: Text(
                                        'SELECT TABLE',
                                        textAlign: TextAlign.center,
                                        style: Constants.tsbg22,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Pool()));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/dashboard-tile-2.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(
                                        top: 60,
                                        bottom: 40,
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Text(
                                        '1000 POOL',
                                        textAlign: TextAlign.center,
                                        style: Constants.tsbg28,
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
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 15,
                                      ),
                                      child: Text(
                                        'SELECT TABLE',
                                        textAlign: TextAlign.center,
                                        style: Constants.tsbg22,
                                      ),
                                    ),
                                  ],
                                ),
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
                          // border: Border(
                          //   top: BorderSide(
                          //     color: Constants.colorGolden,
                          //     width: borderWidth[0],
                          //   ),
                          //   right: BorderSide(
                          //     color: Constants.colorGolden,
                          //     width: borderWidth[1],
                          //   ),
                          //   bottom: BorderSide(
                          //     color: Constants.colorGolden,
                          //     width: borderWidth[2],
                          //   ),
                          //   left: BorderSide(
                          //     color: Constants.colorGolden,
                          //     width: borderWidth[3],
                          //   ),
                          // ),
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
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                color: Constants.colorLight,
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
                            Icon(
                              Icons.games_rounded,
                              color: Colors.white,
                            ),
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
                            Icon(
                              Icons.account_balance_wallet_rounded,
                              color: Colors.white,
                            ),
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
                            Icon(
                              Icons.redeem_rounded,
                              color: Colors.white,
                            ),
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
                            Icon(
                              Icons.payments_rounded,
                              color: Colors.white,
                            ),
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

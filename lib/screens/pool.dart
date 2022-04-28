import 'package:bagaduli/constants.dart';
import 'package:bagaduli/screens/game_rules.dart';
import 'package:flutter/material.dart';

class Pool extends StatefulWidget {
  const Pool({Key? key}) : super(key: key);

  @override
  State<Pool> createState() => _PoolState();
}

class _PoolState extends State<Pool> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                  'CASH BALANCE: ₹ 587',
                  style: Constants.tsbw14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1000 Pool',
                      style: Constants.tsbw22,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const GameRules())));
                      },
                      child: const Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DefaultTabController(
                length: 2,
                child: Column(
                  children: const [
                    SizedBox(
                      height: 50,
                      child: TabBar(
                        indicatorColor: Colors.white,
                        indicatorWeight: 2,
                        tabs: [
                          Tab(
                            text: '2 Players',
                          ),
                          Tab(
                            text: '4 Players',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      child: TabBarView(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
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

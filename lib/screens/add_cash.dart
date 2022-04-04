import 'package:bagaduli/constants.dart';
import 'package:flutter/material.dart';

class AddCash extends StatefulWidget {
  const AddCash({Key? key}) : super(key: key);

  @override
  _AddCashState createState() => _AddCashState();
}

class _AddCashState extends State<AddCash> {
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
                Constants.colorRed,
                Constants.colorDarkRed,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                      'Add Cash',
                      style: Constants.tsbw22,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterprojectszam/utils/const.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(50.0)),
              color: Constants.salmonMAin,
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/images/blob_2.png',
                    width: 352,
                    height: 342,
                    color: Constants.salmonDark,
                  ),
                  top: -100,
                  right: -130,
                ),
                Positioned(
                  child: Image.asset(
                    'assets/images/blob_1.png',
                    width: 302,
                    height: 342,
                    color: Constants.salmonLight,
                  ),
                  top: 20,
                  left: -100,
                ),
                Positioned(
                  child: Image.asset(
                    'assets/images/boy_illustration.png',
                    width: 160,
                    height: 360,
                    color: Constants.salmonLight,
                  ),
                  bottom: 0,
                  right: 0,
                ),
              ],
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: Container(),
          flex: 1,
        ),
      ],
    );
  }
}

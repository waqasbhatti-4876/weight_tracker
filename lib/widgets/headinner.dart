import 'package:flutter/material.dart';
import 'package:flutterprojectszam/utils/const.dart';
import 'package:flutter/widgets.dart';

class HeadInner extends StatelessWidget {
  const HeadInner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(50.0)),
              color: Constants.blueLight,
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/images/blob_2.png',
                    width: 352,
                    height: 342,
                    color: Constants.blueDark,
                  ),
                  top: -100,
                  right: -130,
                ),
                Positioned(
                  child: Image.asset(
                    'assets/images/blob_1.png',
                    width: 302,
                    height: 342,
                    color: Constants.blueDark,
                  ),
                  top: 20,
                  left: -100,
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

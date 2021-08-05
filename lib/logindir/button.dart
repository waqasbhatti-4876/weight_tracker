import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: EdgeInsets.symmetric(horizontal: 50.0),
      decoration: BoxDecoration(
        color: Color(0xFFF18C8E),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

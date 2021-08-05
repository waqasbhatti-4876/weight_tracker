import 'package:flutter/material.dart';
import 'package:flutterprojectszam/logindir/header2.dart';

import 'package:flutterprojectszam/utils/const.dart';

import 'Screens/home_screen.dart';
import 'logindir/button.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String dataemail = '';
  String datapassword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Constants.lightAccent,
              Constants.salmonLight,
              Constants.salmonDark
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Header2(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: Color(0xFFF18C8E)),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter your email",
                                    hintStyle:
                                        TextStyle(color: Colors.redAccent),
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      dataemail = value;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: Color(0xFFF18C8E)),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter your Password",
                                    hintStyle:
                                        TextStyle(color: Colors.redAccent),
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (vale) {
                                    setState(() {
                                      datapassword = vale;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          child: Button(),
                          onTap: () {
                            debugPrint(datapassword);
                            if (datapassword.isNotEmpty &&
                                dataemail.isNotEmpty) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            }
                          },
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                'Not Registered!',
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Signup()));
                                },
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

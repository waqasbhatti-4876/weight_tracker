import 'package:flutter/material.dart';
import 'package:flutterprojectszam/login.dart';
import 'package:flutterprojectszam/logindir/header2.dart';

import 'utils/const.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String name = '';
  String email = '';
  String password = '';
  String cnfrmpsswrd = '';
  String mbile = '';
  String error = '';

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
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          color: Colors.white.withOpacity(0.3),
                          child: Icon(Icons.keyboard_backspace,
                              color: Colors.white),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60.0),
                    topLeft: Radius.circular(60.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Color(0xFFF18C8E)),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Full Name",
                                  hintStyle: TextStyle(color: Colors.redAccent),
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    name = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Color(0xFFF18C8E)),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.redAccent),
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Color(0xFFF18C8E)),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.redAccent),
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    password = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Color(0xFFF18C8E)),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Confirm Password",
                                  hintStyle: TextStyle(color: Colors.redAccent),
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    cnfrmpsswrd = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Color(0xFFF18C8E)),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Mobile Number",
                                  hintStyle: TextStyle(color: Colors.redAccent),
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    mbile = value;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              child: Container(
                                height: 50.0,
                                margin: EdgeInsets.symmetric(horizontal: 50.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF18C8E),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              onTap: () {
                                if (name.isNotEmpty &&
                                    email.isNotEmpty &&
                                    password.isNotEmpty &&
                                    cnfrmpsswrd.isNotEmpty &&
                                    mbile.isNotEmpty) {
                                  if (password == cnfrmpsswrd) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  } else {
                                    setState(() {
                                      error = 'Password not matched';
                                    });
                                  }
                                } else {
                                  setState(() {
                                    error = 'Please fill the empty fields';
                                  });
                                }
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Color(0xFFF18C8E)),
                                  top: BorderSide(color: Color(0xFFF18C8E)),
                                  left: BorderSide(color: Color(0xFFF18C8E)),
                                  right: BorderSide(color: Color(0xFFF18C8E)),
                                ),
                              ),
                              child: Text(
                                error,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
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
    );
  }
}

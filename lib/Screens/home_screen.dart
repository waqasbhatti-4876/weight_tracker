import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterprojectszam/Screens/category_screen.dart';
import 'package:flutterprojectszam/courses/adobexd.dart';
import 'package:flutterprojectszam/courses/sketch.dart';
import 'package:flutterprojectszam/courses/uimotion.dart';
import 'package:flutterprojectszam/utils/const.dart';
import 'package:flutterprojectszam/widgets/card_courses.dart';
import 'package:flutterprojectszam/widgets/header.dart';
import 'package:flutterprojectszam/utils/menuitems.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchControl = new TextEditingController();
  FocusNode myFocusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchControl.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white.withOpacity(0.3),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: Constants.mainPadding,
                  vertical: Constants.mainPadding,
                ),
                height: 44,
                width: 44,
                child: PopupMenuButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white.withOpacity(0.3),
                  ),
                  itemBuilder: (BuildContext context) {
                    return menuitems.map((MenuItems menuitems) {
                      return PopupMenuItem(
                        child: ListTile(
                          leading: Icon(
                            menuitems.icons,
                            size: 20,
                            color: Colors.red,
                          ),
                          title: Text(
                            menuitems.text,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      );
                    }).toList();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.all(Constants.mainPadding),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(height: Constants.mainPadding * 2),

                //1. Welcome User
                Text(
                  'Welcome Back \n Student!',
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),

                SizedBox(
                  height: Constants.mainPadding,
                ),

                // 2. Search TextField
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: TextField(
                    focusNode: myFocusNode,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Constants.textDark,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "Search Courses",
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Constants.textDark,
                        ),
                        onPressed: () {
                          debugPrint("Search Pressed");
                        },
                      ),
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    maxLines: 1,
                    controller: _searchControl,
                  ),
                ),
                SizedBox(
                  height: Constants.mainPadding,
                ),

                // 3. Start Learning Button Section

                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFFEF3F3),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Start Learning \n New Stuff',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Constants.textDark,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),

                          //Categories BUtton
                          Container(
                            width: 150,
                            child: FlatButton(
                              padding: EdgeInsets.all(10.0),
                              color: Constants.salmonMAin,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "Categories",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                              onPressed: () {
                                //Navigate to learning
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CategoryScreen()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Image Positioning Girl
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        'assets/images/researching.png',
                        width: 200,
                        height: 104,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),

                Text(
                  "Courses are in progress",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Constants.textDark,
                  ),
                ),

                SizedBox(height: 20.0),

                //List Of Courses

                ListView(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    FlatButton(
                      child: CardCousres(
                        image: Image.asset(
                          "assets/images/icon_1.png",
                          width: 40,
                          height: 40,
                        ),
                        title: "Adobe XD Prototyping",
                        hours: "10 hours, 19 lessons",
                        progress: "25%",
                        percentage: 0.25,
                        color: Constants.lightPink,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Adobe()));
                      },
                    ),
                    FlatButton(
                      child: CardCousres(
                        image: Image.asset(
                          "assets/images/icon_2.png",
                          width: 40,
                          height: 40,
                        ),
                        title: "Sketch shortcuts and tricks",
                        hours: "10 hours, 19 lessons",
                        progress: "50%",
                        percentage: 0.5,
                        color: Constants.yellowLight,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sketch()));
                      },
                    ),
                    FlatButton(
                      child: CardCousres(
                        image: Image.asset(
                          "assets/images/icon_3.png",
                          width: 40,
                          height: 40,
                        ),
                        title: "UI Motion Design in After Effect",
                        hours: "10 hours, 19 lessons",
                        progress: "75%",
                        percentage: 0.75,
                        color: Constants.lightViolet,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UIMotion()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterprojectszam/utils/const.dart';
import 'package:flutterprojectszam/widgets/headinner.dart';
import 'package:flutterprojectszam/widgets/card_courses.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: new EdgeInsets.symmetric(
                    horizontal: Constants.mainPadding,
                    vertical: Constants.mainPadding),
                height: 44,
                width: 44,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.white.withOpacity(0.3),
                  child: Icon(Icons.keyboard_backspace, color: Colors.white),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Constants.mainPadding,
                  vertical: Constants.mainPadding,
                ),
                height: 44,
                width: 44,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.white.withOpacity(0.3),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    debugPrint(
                      'Menu Pressed',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          HeadInner(),
          ListView(
            children: [
              SizedBox(
                height: Constants.mainPadding * 3,
              ),
              Center(
                child: Text(
                  'UI/UX\n Courses',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: Constants.mainPadding * 2),
              Container(
                padding: EdgeInsets.fromLTRB(
                  Constants.mainPadding,
                  Constants.mainPadding * 2,
                  Constants.mainPadding,
                  Constants.mainPadding,
                ),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50.0)),
                  color: Colors.white,
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    CardCousres(
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
                    CardCousres(
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
                    CardCousres(
                      image: Image.asset(
                        "assets/images/icon_3.png",
                        width: 40,
                        height: 40,
                      ),
                      title: "UI Motion Design in After Effect",
                      hours: "10 hours, 19 lessons",
                      progress: "75%",
                      percentage: 0.75,
                      color: Constants.yellowLight,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

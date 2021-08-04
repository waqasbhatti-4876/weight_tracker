import 'package:flutter/material.dart';
import 'package:flutterprojectszam/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CardCousres extends StatelessWidget {
  final Image image;
  final String title;
  final String hours;
  final String progress;
  final double percentage;
  final Color color;
  const CardCousres({
    Key? key,
    required this.image,
    required this.title,
    required this.hours,
    required this.progress,
    required this.percentage,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: color,
      ),
      child: Row(
        children: [
          image,
          SizedBox(height: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Constants.textDark,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  hours,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    color: Color(0xFFF18C8E),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Row(
            children: [
              Text(
                progress,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Constants.textDark,
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: CircularPercentIndicator(
                  backgroundColor: Colors.white,
                  radius: 43.0,
                  lineWidth: 2.0,
                  animation: true,
                  percent: percentage,
                  center: Icon(
                    Icons.play_arrow,
                    color: Color(0xFFF18C8E),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Color(0xFFF18C8E),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

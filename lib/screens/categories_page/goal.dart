import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kora_app/screens/videos.dart';
import 'package:kora_app/util/body_colors.dart';

class Goal extends StatefulWidget {
  const Goal({Key? key}) : super(key: key);

  @override
  _GoalState createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          
          TableGoal(
            image: 'asset/image/hakimi.jpg',
            titel:
                'Five reasons why the jaguars will make the 2018 nfl playoffs',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Video()));
            },
          ),
          TableGoal(
            image: 'asset/image/hakimi.jpg',
            titel:
                'Five reasons why the jaguars will make the 2018 nfl playoffs',
            onTap: () {},
          ),
          TableGoal(
            image: 'asset/image/hakimi.jpg',
            titel:
                'Five reasons why the jaguars will make the 2018 nfl playoffs',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class TableGoal extends StatelessWidget {
  String? titel;
  String? image;
  Function()? onTap;
  TableGoal({Key? key, this.image, this.titel, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: InkWell(
            onTap: onTap,
            child: Container(
              height: 200.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  image: DecorationImage(
                      image: AssetImage(image!), fit: BoxFit.cover)),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            SizedBox(
              height: 150.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 400,
                child: Text(
                  titel!,
                  style: Style.whiteTitelText,
                  maxLines: 2,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

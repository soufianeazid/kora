import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/util/body_colors.dart';
import 'package:kora_app/widgets/score_table.dart';

class Scores extends StatefulWidget {
  const Scores({Key? key}) : super(key: key);

  @override
  _ScoresState createState() => _ScoresState();
}

class _ScoresState extends State<Scores> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ScoreTable(
              childs: Column(
                children: [
                  resulta('asset/image/fcb.jpg', 'FcBarcelona', 'Real Madrid',
                      '0', '0', 'asset/image/real.jpg'),
                      resulta('asset/image/fcb.jpg', 'FcBarcelona', 'Real Madrid',
                      '0', '0', 'asset/image/real.jpg'),
                  //resulta(),
                ],
              ),
              date: 'The, 8:20 PM ET'),
              ScoreTable(
              childs: Column(
                children: [
                  resulta('asset/image/fcb.jpg', 'FcBarcelona', 'Real Madrid',
                      '0', '0', 'asset/image/real.jpg'),
                      resulta('asset/image/fcb.jpg', 'FcBarcelona', 'Real Madrid',
                      '0', '0', 'asset/image/real.jpg'),
                  //resulta(),
                ],
              ),
              date: 'The, 8:20 PM ET'),
              ScoreTable(
              childs: Column(
                children: [
                  resulta('asset/image/fcb.jpg', 'FcBarcelona', 'Real Madrid',
                      '0', '0', 'asset/image/real.jpg'),
                      resulta('asset/image/fcb.jpg', 'FcBarcelona', 'Real Madrid',
                      '0', '0', 'asset/image/real.jpg'),
                  //resulta(),
                ],
              ),
              date: 'The, 8:20 PM ET'),
              ScoreTable(
              childs: Column(
                children: [
                  resulta('asset/image/fcb.jpg', 'FcBarcelona', 'Real Madrid',
                      '0', '0', 'asset/image/real.jpg'),
                      resulta('asset/image/fcb.jpg', 'FcBarcelona', 'Real Madrid',
                      '0', '0', 'asset/image/real.jpg'),
                  //resulta(),
                ],
              ),
              date: 'The, 8:20 PM ET')
        ],
      ),
    );
  }

  Widget resulta(String? logo1, name1, name2, res1, res2, logo2) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, right: 15.w, left: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 42.h,
            width: 42.w,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(logo1!), fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(name1!, style: Style.blackTitelText),
                  Text('-', style: Style.blackTitelText),
                  Text(name2!, style: Style.blackTitelText),
                ],
              ),
              Row(
                children: [
                  Text(res1!, style: Style.greyText),
                  Text('-', style: Style.greyText),
                  Text(res2!, style: Style.greyText),
                ],
              ),
            ],
          ),
          Container(
            height: 42.h,
            width: 42.w,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(logo2!), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}

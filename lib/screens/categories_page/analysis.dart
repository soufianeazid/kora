import 'package:flutter/material.dart';
import 'package:kora_app/screens/analysis_detail.dart';
import 'package:kora_app/screens/top_news.dart';
// ignore: unused_import
import 'package:kora_app/util/body_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/widgets/ads.dart';
import 'package:kora_app/widgets/custom_table.dart';

class Analysis extends StatefulWidget {
  const Analysis({Key? key}) : super(key: key);

  @override
  _AnalysisState createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTable(
              onTap: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AnalysisDetail()));
              },
              image: 'asset/image/image3.jpg',
              titel:
                  'Five reasons why the jaguars will make the 2018 nfl playoffs',
              date: '01/01/2021',
              icon: Icons.calendar_today,
            ),

            //CustomTable(),
            //CustomTable(),
          ],
        ),
      ),
    );
  }
}

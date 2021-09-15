import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/screens/analysis_detail.dart';
import 'package:kora_app/screens/top_news.dart';
import 'package:kora_app/util/body_colors.dart';
import 'package:kora_app/widgets/ads.dart';

class Feautured extends StatefulWidget {
  const Feautured({Key? key}) : super(key: key);

  @override
  _FeauturedState createState() => _FeauturedState();
}

class _FeauturedState extends State<Feautured> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Container(
              width: double.infinity,
              height: 260.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TopNewsTable(
                    image: 'asset/image/image3.jpg',
                    iconText: 'Analysis',
                    titel:
                        'Five reasons why the jaguars willmake the 2018 nfl playoffs',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AnalysisDetail()));
                    },
                  ),
                  TopNewsTable(
                    image: 'asset/image/image3.jpg',
                    iconText: 'Analysis',
                    titel:
                        'Five reasons why the jaguars willmake the 2018 nfl playoffs',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AnalysisDetail()));
                    },
                  ),
                 
                  TopNewsTable(
                    image: 'asset/image/image3.jpg',
                    iconText: 'Analysis',
                    titel:
                        'Five reasons why the jaguars willmake the 2018 nfl playoffs',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AnalysisDetail()));
                    },
                  ),
                ],
              ),
            ),
          ),
          //SizedBox(
          //  height: 10.h,
          //),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Text(
              'Today news',
              style: Style.subTitel,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.infinity,
            //height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(0, 7), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                TodayNews(
                  image: 'asset/image/image3.jpg',
                  titel: 'Carson Wentz extension inevitable',
                  subTitel:
                      'Giveng quarterback Carson Wentz areccord-breaking contract was the easy',
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewsDetail()));
                    
                  },
                ),
                TodayNews(
                  image: 'asset/image/image3.jpg',
                  titel: 'Carson Wentz extension inevitable',
                  subTitel:
                      'Giveng quarterback Carson Wentz areccord-breaking contract was the easy',
                  onTap: () {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewsDetail()));
                  },
                ),
                TodayNews(
                  image: 'asset/image/image3.jpg',
                  titel: 'Carson Wentz extension inevitable',
                  subTitel:
                      'Giveng quarterback Carson Wentz areccord-breaking contract was the easy',
                  onTap: () {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewsDetail()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TopNewsTable extends StatelessWidget {
  String? image;
  String? titel;
  String? iconText;
  Function()? onTap;

  TopNewsTable({Key? key, this.iconText, this.image, this.onTap, this.titel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w, bottom: 20.h),
      child: Stack(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 300.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  image: DecorationImage(
                      image: AssetImage(image!), fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 6,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Style.customRed,
                  height: 20.h,
                  //width: 20.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Center(
                      child: Text(
                        iconText!,
                        style: TextStyle(color: Style.whiteColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 260.w,
                  child: Text(
                    titel!,
                    style: Style.whiteTitelText,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TodayNews extends StatelessWidget {
  String? titel;
  String? image;
  String? subTitel;
  Function()? onTap;

  TodayNews({Key? key, this.image, this.onTap, this.subTitel, this.titel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: 90.h,
              width: 90.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                image: DecorationImage(
                    image: AssetImage(image!), fit: BoxFit.cover),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: 205.w,
                child: Text(
                  titel!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Style.blackTitelText,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 205.w,
                child: Text(
                  subTitel!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Style.greyText,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.more_vert,
              size: 30.sp,
              color: Style.greyTextColor,
            ),
          )
        ],
      ),
    );
  }
}

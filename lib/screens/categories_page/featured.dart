import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/screens/top_news.dart';
import 'package:kora_app/util/body_colors.dart';

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
                  top_news('asset/image/image3.jpg', 'Analysis',
                      'Five reasons why the jaguars will\nmake the 2018 nfl playoffs'),
                  top_news('asset/image/image3.jpg', 'Analysis',
                      'Five reasons why the jaguars will\nmake the 2018 nfl playoffs'),
                  top_news('asset/image/image3.jpg', 'Analysis',
                      'Five reasons why the jaguars will\nmake the 2018 nfl playoffs'),
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
                today_news(),
                today_news(),
                today_news(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget top_news(String image, iconText, titel) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w, bottom: 20.h),
      child: Stack(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TopNews()));
            },
            child: Container(
              width: 300.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
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
                        iconText,
                        style: TextStyle(color: Style.whiteColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  titel,
                  style: Style.whiteTitelText,
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget today_news() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90.h,
            width: 90.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              image: DecorationImage(
                  image: AssetImage('asset/image/image3.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              Container(
                width: 205.w,
                child: Text(
                  'Carson Wentz extension inevitable',
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
                  'Giveng quarterback Carson Wentz areccord-breaking contract was the easy',
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

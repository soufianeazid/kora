import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/util/body_colors.dart';

class AnalysisDetail extends StatefulWidget {
  const AnalysisDetail({Key? key}) : super(key: key);

  @override
  _TopNewsState createState() => _TopNewsState();
}

class _TopNewsState extends State<AnalysisDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/image/image3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.h, left: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_left,
                              size: 40.sp,
                              color: Style.whiteColor,
                            ),
                          ],
                        ),
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        color: Style.customRed,
                        height: 25.h,
                        width: 70.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Center(
                            child: Text(
                              'Analysis',
                              style: TextStyle(color: Style.whiteColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Five reasons why the jaguars will make the 2018 nfl playoffs',
                        style: Style.blackTitelText,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or another type of compatible computer. Text messages may be sent over a cellular network, or may also be sent via an Internet connection.\n\n\nis the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or another type of compatible computer. Text messages may be sent over a cellular network, or may also be sent via an Internet connection.',
                        style: Style.blackOpasityText,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

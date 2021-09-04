import 'package:flutter/material.dart';
import 'package:kora_app/util/body_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScoreTable extends StatelessWidget {
  Widget? childs;
  String? date;
  ScoreTable({
    this.childs,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      child: Container(
          height: 200.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: Style.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 6,
                  offset: Offset(2, 2), // changes position of shadow
                ),
              ]),
          child: Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              childs!,
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border:
                        Border(top: BorderSide(color: Style.greyTextColor))),
                child: Padding(
                  padding:  EdgeInsets.all(10),
                  child: Text(
                    date!,
                    style: Style.greyText,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

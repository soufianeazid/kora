import 'package:flutter/material.dart';
import 'package:kora_app/util/body_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTable extends StatelessWidget {
  Function()? onTap;
  String? image;
  String? titel;
  String? date;
  IconData? icon;
  CustomTable(
      {Key? key, this.onTap, this.date, this.icon, this.image, this.titel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 300.h,
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
            ],
          ),
          child: Column(
            children: [
              Image.asset(
                image!,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  titel!,
                  style: Style.blackTitelText,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    date!,
                    style: Style.blackOpasityText,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    icon!,
                    color: Style.blackOpacityColor,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

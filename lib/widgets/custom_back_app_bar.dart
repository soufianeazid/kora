import 'package:flutter/material.dart';
import 'package:kora_app/util/body_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarBack extends StatelessWidget {
  String? text;
  AppBarBack({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: Container(
        height: 70,
        width: double.infinity,
        color: Style.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              child: Icon(
                Icons.keyboard_arrow_left,
                size: 30.sp,
                color: Style.blackTextColor,
              ),
            ),
            Text(text!, style: Style.pageTitel),
            SizedBox(
              width: 20.w,
            )
          ],
        ),
      ),
    );
  }
}

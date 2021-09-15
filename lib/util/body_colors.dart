import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Style {
  static final Color whiteColor= Colors.white;
  static final Color bodyColor = Color(0xFFFAFAFA);
  static final Color blackOpacityColor = Color(0xFF989898);
  static final Color blackTextColor = Color(0xFF070707);
  static final Color blueTextColor = Color(0xFF0F3053);
  static final Color greyTextColor = Color(0xFFCACACA);
  static final Color customRed = Color(0xFFF01D3C);


  static TextStyle pageTitel = TextStyle(
    color: blackTextColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle whiteTitelText = TextStyle(
    color: Colors.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    
  );
  static TextStyle blackTitelText = TextStyle(
    color: Colors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle subTitel = TextStyle(
    color: Style.blueTextColor,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle greyText = TextStyle(
    color: Style.greyTextColor,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle blackOpasityText = TextStyle(
    color: Style.blackOpacityColor,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle blackTitelText2 = TextStyle(
    color: Colors.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );

}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/widgets/custom_back_app_bar.dart';
import 'package:kora_app/util/body_colors.dart';
import 'package:kora_app/widgets/custom_switch.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Style.bodyColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBarBack(text: 'Setting'),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 70,
                width: double.infinity,
                color: Style.whiteColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Notifications',
                        style: Style.blackTitelText2,
                      ),
                      CustomSwitch()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 70,
                width: double.infinity,
                color: Style.whiteColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Version',
                        style: Style.blackTitelText2,
                      ),
                      Text(
                        '0.0.1',
                        style: Style.blackOpasityText,
                      )
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

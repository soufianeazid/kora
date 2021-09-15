import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/util/body_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopPlayers extends StatelessWidget {
  const TopPlayers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopPlayersTable(
                image: 'asset/image/hakimi.jpg',
                name: 'Achref Hakimi',
                region: 'Maroc',
                iconButton: FontAwesomeIcons.facebook,
                onTap: () {},
                iconButton2: FontAwesomeIcons.instagram,
                onTap2: () {},
                iconButton3: FontAwesomeIcons.twitter,
                onTap3: () {},
              ),
              TopPlayersTable(
                image: 'asset/image/salah.jpg',
                name: 'Mohammed Salah',
                region: 'egypt',
                iconButton: FontAwesomeIcons.facebook,
                onTap: () {},
                iconButton2: FontAwesomeIcons.instagram,
                onTap2: () {},
                iconButton3: FontAwesomeIcons.twitter,
                onTap3: () {},
              ),
              TopPlayersTable(
                image: 'asset/image/mahraz.jpg',
                name: 'Riad Mahraz',
                region: 'jazair',
                iconButton: FontAwesomeIcons.facebook,
                onTap: () {},
                iconButton2: FontAwesomeIcons.instagram,
                onTap2: () {},
                iconButton3: FontAwesomeIcons.twitter,
                onTap3: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopPlayersTable extends StatelessWidget {
  String? image;
  String? name;
  String? region;
  IconData? iconButton, iconButton2, iconButton3;
  Function()? onTap, onTap2, onTap3;

  TopPlayersTable({
    Key? key,
    this.iconButton,
    this.iconButton2,
    this.iconButton3,
    this.onTap2,
    this.onTap3,
    this.image,
    this.name,
    this.region,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Container(
        height: 150.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF272727),
          borderRadius: BorderRadius.circular(5.r),
          //color: Style.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 6,
              offset: Offset(2, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.r),
                    bottomLeft: Radius.circular(5.r)),
                child: Image.asset(
                  image!,
                  width: 130.w,
                  height: double.infinity,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    name!,
                    style: Style.whiteTitelText,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          iconButton,
                          color: Style.whiteColor,
                        ),
                        onPressed: onTap,
                      ),
                      IconButton(
                        icon: FaIcon(
                          iconButton2,
                          color: Style.whiteColor,
                        ),
                        onPressed: onTap2,
                      ),
                      IconButton(
                        icon: FaIcon(
                          iconButton3,
                          color: Style.whiteColor,
                        ),
                        onPressed: onTap3,
                      ),
                    ],
                  ),
                  Container(
                    height: 30.h,
                    width: 70.w,
                    decoration: BoxDecoration(color: Color(0xFFFCD34D)),
                    child: Center(
                      child: Text(
                        region!,
                        style: Style.blackTitelText2,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

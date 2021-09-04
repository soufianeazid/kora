import 'package:flutter/material.dart';
import 'package:kora_app/screens/categories_page/featured.dart';
import 'package:kora_app/screens/categories_page/scores.dart';
import 'package:kora_app/screens/setting.dart';
import 'package:kora_app/util/body_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  List<String> categories = [
    "Featured",
    "Scores",
    "Fantasy",
    "Top Players",
    "Videos"
  ];
  // By default our first item will be selected
  int selectedIndex = 0;
  bool isCollapsed = true;
  double? screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController? _controller;
  Animation<double>? _scaleAnimation;
  Animation<double>? _menuScaleAnimation;
  Animation<Offset>? _slideAnimation;
  //int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller!);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller!);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller!);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Style.bodyColor,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation!,
      child: ScaleTransition(
        scale: _menuScaleAnimation!,
        child: Padding(
          padding: EdgeInsets.only(left: 16.0.w),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 70.h,
                  width: 200.w,
                  color: Colors.yellow,
                  child: Center(child: Text('Titel'),),
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: (){
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Setting()));
                  },
                  child: Row(
                    children: [
                      Text("Settings",
                          style: TextStyle(
                              color: Style.blackTextColor, fontSize: 22.sp)),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Text("Privacy Policy",
                    style: TextStyle(
                        color: Style.blackTextColor, fontSize: 22.sp)),
                SizedBox(height: 10.h),
                Text("About Us",
                    style: TextStyle(
                        color: Style.blackTextColor, fontSize: 22.sp)),
                SizedBox(height: 10.h),
                Text("Share",
                    style: TextStyle(
                        color: Style.blackTextColor, fontSize: 22.sp)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0.w,
      bottom: 0.w,
      left: isCollapsed ? 0.w : 0.6.w * screenWidth!,
      right: isCollapsed ? 0.w : -0.2.w * screenWidth!,
      child: ScaleTransition(
        scale: _scaleAnimation!,
        child: Material(
          animationDuration: duration,
          elevation: 8,
          color: Style.bodyColor,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            child: Container(
              //color: Colors.black,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(left: 16.w, top: 48.h, right: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          child: Icon(Icons.menu, color: Style.greyTextColor),
                          onTap: () {
                            setState(() {
                              if (isCollapsed)
                                _controller!.forward();
                              else
                                _controller!.reverse();

                              isCollapsed = !isCollapsed;
                            });
                          },
                        ),
                        Text("News", style: Style.pageTitel),
                        Icon(Icons.search, color: Style.greyTextColor),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                    ),
                    child: SizedBox(
                      height: 25.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) => buildCategory(index),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  getBody(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: selectedIndex == index
                    ? Style.blueTextColor
                    : Style.greyTextColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h), //top padding 5
              height: 2.h,
              width: 30.w,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Feautured(),
      Scores(),
      Container(
        child: Center(
          child: Text('fantasy'),
        ),
      ),
      Container(
        child: Center(
          child: Text('top Players'),
        ),
      ),
      Container(
        child: Center(
          child: Text('videos'),
        ),
      ),
    ];
    return IndexedStack(
      index: selectedIndex,
      children: pages,
    );
  }
}

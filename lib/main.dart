import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kora_app/screens/news.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("ar"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        locale: Locale("ar"), // OR Locale('ar', 'AE') OR Other RTL locales,

        debugShowCheckedModeBanner: false,
        home: News(),
      ),
      designSize: Size(360, 690),
    );
  }
}

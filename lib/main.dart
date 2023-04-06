import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:online_course/screens/main_home_screen/main_home_screen.dart';

import 'Theme/theme.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(360, 690),
        builder: (_,child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme:AppTheme.light(context),
          darkTheme:AppTheme.dark(context) ,
          themeMode: ThemeMode.light,
          home: child,
        ),
      child: const SplashScreen(),

    );
  }
}



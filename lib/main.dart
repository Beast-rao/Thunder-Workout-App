import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:thunder_workout_app/all/Screens/workout_screen.dart';
import 'package:thunder_workout_app/all/core.dart';
import 'package:thunder_workout_app/utils/controler.dart';
import 'all/Screens/welcome_screen.dart';
import 'route/app_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  Get.put(NameController());
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Thunder Workout App",
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        hintColor: Colors.white,
        textTheme: TextTheme(titleMedium: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: Duration(milliseconds: 230),
      // initialRoute: AppScreens.INITIAL,
      // getPages: AppScreens.routes,
      // home: ExerciseScreen(),
      // home: WorkoutScreen(),
      // home: SignUpScreen(),
      home: WelcomeScreen(),
      // home: AboutScreen(),
    );
  }
}

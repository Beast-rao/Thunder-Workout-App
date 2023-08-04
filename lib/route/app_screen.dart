import 'package:get/get.dart';
import 'package:thunder_workout_app/all/Screens/Signup_screen.dart';
import 'package:thunder_workout_app/all/Screens/forget_password_screen.dart';
import 'package:thunder_workout_app/route/routes.dart';
import 'package:thunder_workout_app/all/core.dart';


class AppScreens {
  static const INITIAL = Routes.Welcome;
  static final routes = [
    GetPage(
      name: Routes.Welcome,
      page: () => const WelcomeScreen(),
    ),
    // Add a unique key here
    GetPage(
      name: Routes.About,
      page: () =>  AboutScreen(),
    ),
    GetPage(
      name: Routes.Login,
      page: () =>  LogInScreen(),
    ),
    GetPage(
      name: Routes.Forget_Password,
      page: () =>  ForgetPasswordScreen(),
    ),
    GetPage(
      name: Routes.Signup,
      page: () =>  SignUpScreen(),
    ),
    GetPage(
      name: Routes.Workout,
      page: () =>  WorkoutScreen(),
    ),
    GetPage(
      name: Routes.Exercise,
      page: () =>  ExerciseScreen(),
    ),
    // Add a unique key here
// Add a unique key here
  ];
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thunder_workout_app/all/core.dart';
import 'package:thunder_workout_app/theme/layout.dart';

import '../../theme/colors.dart';
import 'about_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bFColor,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/1.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              child: Center(
                child: Text(
                  "RAO",
                  style: TextStyle(
                      fontFamily: 'Bebas',
                      fontSize: 50,
                      letterSpacing: 3,
                      color: CupertinoColors.systemGrey3.withOpacity(0.2)),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(color: bFColor.withOpacity(0.7)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(15)),
                child: Column(
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(20),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "CREATE\t",
                            style: TextStyle(
                                fontFamily: 'Bebas',
                                fontSize: AppLayout.getHeight(30),
                                letterSpacing: 5,
                                color: Colors.white),
                          ),
                          TextSpan(
                              text: "YOURSELF",
                              style: TextStyle(
                                  fontFamily: 'Bebas',
                                  fontSize: AppLayout.getHeight(30),
                                  letterSpacing: 5,
                                  color: bTColor))
                        ],
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'WELCOME',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: AppLayout.getHeight(40),
                                // fontWeight: FontWeight.bold,
                                fontFamily: 'Bebas'),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(7),
                          ),
                          Text(
                            "One isn't necessarily born with courage, but one is born with potential.  ~ Rao Faheem",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(30),
                    ),
                    TextButton(
                        onPressed: () => Get.to(AboutScreen()),
                        child: Container(
                          height: AppLayout.getHeight(50),
                          width: Get.width * 0.7,
                          decoration: BoxDecoration(
                            color: bTColor,
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(25)),
                          ),
                          child: Center(
                            child: Text("Get In Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppLayout.getHeight(20))),
                          ),
                        )),
                    SizedBox(
                      height: AppLayout.getHeight(10),
                    ),
                    TextButton(
                        onPressed: () => Get.to(LogInScreen()),
                        child: Container(
                          height: AppLayout.getHeight(50),
                          width: Get.width * 0.7,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(25)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: AppLayout.getHeight(2))),
                          child: Center(
                            child: Text("Log In",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppLayout.getHeight(20))),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

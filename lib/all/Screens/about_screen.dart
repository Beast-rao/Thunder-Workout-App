import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thunder_workout_app/all/core.dart';
import 'package:thunder_workout_app/theme/layout.dart';

import '../../theme/colors.dart';
import '../../widgets/mfselestion.dart';



class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
                      image: AssetImage("assets/images/8.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(color: bFColor.withOpacity(0.7)),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25), vertical: AppLayout.getHeight(15)),
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
                            'About You',
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
                            "We would love to Know more about you,move ahead to complete the information",
                            style: TextStyle(
                                color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(30),
                    ),
                    ValueBuilder<int?>(
                      initialValue: 0,
                      builder: (value, index) => Row( // Update the return type to Widget
                        children: [
                          OptionWidget(
                            onTap: () => index(0),
                            state: "I'm\nBeginner",
                            detail: "I don't have much practice",
                            enable: value == 0 ? true : false,
                          ),
                          SizedBox(
                            width: AppLayout.getHeight(10),
                          ),
                          OptionWidget(
                            onTap: () => index(1),
                            state: "I'm\nExpert",
                            detail: "I have trained more times",
                            enable: value == 1 ? true : false,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: AppLayout.getHeight(30),),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () =>Get.back(),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(AppLayout.getHeight(5)),
                              ),
                              child: Center(
                                child: Text("Back",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: AppLayout.getHeight(16))),
                              ),
                            )),
                        Spacer(),
                        TextButton(
                            onPressed: ()=>Get.to(LogInScreen()),
                            child: Container(
                              width: AppLayout.getHeight(130),
                              height: AppLayout.getHeight(40),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(AppLayout.getHeight(5)),
                                color: bTColor,
                              ),
                              child: Center(
                                child: Text("Next",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: AppLayout.getHeight(16))),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   width: double.maxFinite,
            //   height: double.maxFinite,
            //   decoration: BoxDecoration(color: Mytheme.bg.withOpacity(0.11)),
            // )

          ],
        ),
      ),
    );
  }
}

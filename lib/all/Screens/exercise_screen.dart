import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colors.dart';
import '../../theme/layout.dart';

class ExerciseScreen extends StatelessWidget {
  final String? imagePath;
  final String? name;
  final String? id;

  const ExerciseScreen({Key? key, this.imagePath,this.name,this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: bFColor,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min, // Set mainAxisSize to MainAxisSize.min
                children: [
                  Stack(
                    children: [backgroundgradient(), title()],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(20),
                        horizontal: AppLayout.getHeight(15)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Set mainAxisSize to MainAxisSize.min

                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '$name',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'Bebas'),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: AppLayout.getHeight(20),
                            ),
                            Icon(Icons.star,
                                color: CupertinoColors.systemYellow, size: 15),
                            SizedBox(
                              width: AppLayout.getHeight(5),
                            ),
                            Icon(Icons.star,
                                color: CupertinoColors.systemYellow, size: 15),
                            SizedBox(
                              width: AppLayout.getHeight(5),
                            ),
                            Icon(Icons.star,
                                color: CupertinoColors.systemYellow, size: 15),
                            SizedBox(
                              width: AppLayout.getHeight(5),
                            ),
                            Icon(Icons.star,
                                color: CupertinoColors.systemYellow, size: 15),
                            SizedBox(
                              width: AppLayout.getHeight(5),
                            ),
                            Icon(Icons.star,
                                color: CupertinoColors.systemYellow, size: 15),
                          ],
                        ),
                        SizedBox(
                          height: AppLayout.getHeight(10),
                        ),
                        TabBar(
                          indicatorColor: bTColor,
                          tabs: [
                            FittedBox(child: Tab(text: "Description")),
                            FittedBox(child: Tab(text: "Feedback")),
                            FittedBox(child: Tab(text: "Related")),
                          ],
                        ),
                        SizedBox(
                          height: AppLayout.getHeight(2),
                        ),
                       SizedBox(
                         height:AppLayout.getHeight(120),
                         child: TabBarView(
                                children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "You Should Always try to workout at least three times,Spaced out across the week, so you can get the maximun benefits. Therefore,anywhere from 3 to 6 workout is ideal. I like to do 6 to 8 workouts a week on Monday to Sunday with a rest day on Friday. \nREST:Second of all dont forget the last day. ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Center(
                                  child: Text(
                                "No Feedback yet",
                                style: TextStyle(color: Colors.white),
                              )),
                              Center(
                                  child: Text(
                                "Coming Soon",
                                style: TextStyle(color: Colors.white),
                              )),
                            ]),
                       ),
                        SizedBox(height: AppLayout.getHeight(10),),
                        buttons()

                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  Container backgroundgradient() {
    return Container(
      height: Get.height * 0.55,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/$imagePath'), fit: BoxFit.cover)),
    );
  }

  Container title() {
    return Container(
      height: Get.height * 0.59,
      width: double.maxFinite,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            bFColor,
            Colors.transparent,
          ])),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(25),
            vertical: AppLayout.getHeight(15)),
        child: Column(
          children: [
            SizedBox(
              height: AppLayout.getHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(6),
                      vertical: AppLayout.getHeight(4)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: bTColor,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: AppLayout.getHeight(3),
                      ),
                      Text(
                        "3 Hours",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => Get.back( ),
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(5)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.close_rounded,
                      color: bFColor,
                      size: 20,
                    )),
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "17 ",
                        style: TextStyle(
                            color: bTColor, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "Moves",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "12 ",
                        style: TextStyle(
                            color: bTColor, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "Sets",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "30 ",
                        style: TextStyle(
                            color: bTColor, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "Mins",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Column buttons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {},
            child: Container(
              height: 50,
              width: Get.width * 0.7,
              decoration: BoxDecoration(
                  color: bTColor, borderRadius: BorderRadius.circular(5)),
              child: const Center(
                  child: Text(
                    "Begin Train for\$2",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            )),
        SizedBox(
          height: AppLayout.getHeight(15),
        ),
        TextButton(
            onPressed: () {},
            child: Container(
              height: 50,
              width: Get.width * 0.7,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: bTColor)),
              child: Center(
                  child: Text(
                    "Begin Train Demo",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            )),
      ],
    );
  }

}

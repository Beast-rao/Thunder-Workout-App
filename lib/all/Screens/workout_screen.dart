import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thunder_workout_app/utils/workout_model.dart';
import 'package:thunder_workout_app/widgets/daily_workout.dart';
import 'package:thunder_workout_app/widgets/popular_workout.dart';

import '../../theme/colors.dart';
import '../../theme/layout.dart';
import '../../utils/controler.dart';

class WorkoutScreen extends StatefulWidget {
  final String? name;

  WorkoutScreen({this.name});

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> filteredPopularList = [];
  List<Map<String, dynamic>> filteredDailyList = [];
  final NameController nameController = Get.find(); // Move this line here

  @override
  void initState() {
    // Initialize the filtered lists with the original lists
    filteredPopularList = popularList;
    filteredDailyList = dailyList;
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void filterWorkouts(String query) {
    query = query.toLowerCase();
    setState(() {
      filteredPopularList = popularList
          .where((workout) => workout['name'].toLowerCase().contains(query))
          .toList();

      filteredDailyList = dailyList
          .where((workout) => workout['name'].toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: bFColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [backgroundgradient(), title()],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(20),
                      horizontal: AppLayout.getHeight(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: bSColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(20),
                              vertical: AppLayout.getHeight(3)),
                          child: TextFormField(
                            controller: _searchController,
                            onChanged: filterWorkouts,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: tFColor, width: 2),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: tFColor, width: 2),
                              ),
                              hintText: "Search Workout",
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(25),
                      ),
                      TabBar(
                        // isScrollable: true, // Make the TabBar scrollable
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: bSColor,
                          border: Border.all(color: bTColor, width: 2),
                        ),
                        tabs: [
                          FittedBox(child: Tab(text: "Popular")),
                          FittedBox(child: Tab(text: "Hard Workout")),
                          FittedBox(child: Tab(text: "Full Body")),
                          FittedBox(child: Tab(text: "Crossfit")),
                        ],
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Popular workout',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: AppLayout.getHeight(40),
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Bebas'),
                        ),
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(10),
                      ),
                      PopularWorkout(popular: filteredPopularList),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'daily workout',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: AppLayout.getHeight(40),
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Bebas'),
                        ),
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(10),
                      ),
                      DailyWorkout(daily: filteredDailyList),
                      SizedBox(
                        height: AppLayout.getHeight(25),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
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
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Hey, ",
                      style: TextStyle(
                          color: bTColor, fontSize: 20, fontFamily: 'Bebas')),
                  TextSpan(
                      text: nameController.name.value,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Bebas'))
                ])),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: bTColor, width: 2),
                        shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/rao.jpg"),
                    ))
              ],
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bTColor,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xe800aaff),
                        spreadRadius: 3.0,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 1)
                  ]),
              child: Center(
                  child: Icon(
                Icons.play_arrow_rounded,
                size: 30,
                color: Colors.white,
              )),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Find ",
                      style: TextStyle(
                          color: bTColor, fontSize: 30, fontFamily: 'Bebas')),
                  TextSpan(
                      text: "your workout",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Bebas'))
                ])),
                Icon(
                  Icons.filter_list,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container backgroundgradient() {
    return Container(
      height: Get.height * 0.52,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/13.jpg'), fit: BoxFit.cover)),
    );
  }
}

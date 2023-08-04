import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../all/Screens/exercise_screen.dart';

class DailyWorkout extends StatelessWidget {
  final List<Map<String, dynamic>> daily;

  DailyWorkout({Key? key, required this.daily}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: daily.map((entry) => Daily(daily: entry)).toList(),
      ),
    );
  }
}



class Daily extends StatelessWidget {
  final Map<String, dynamic> daily;

  const Daily({Key? key, required this.daily}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? image = daily['image'];
    final String? name = daily['name'];
    final String? id = daily['id'];

// Use UniqueKey for the Hero tag to ensure uniqueness
    final heroTag = UniqueKey();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        onTap: () {
          Get.to(
            ExerciseScreen(imagePath: image, name: name ?? '', id: id),
            transition: Transition.rightToLeft, // Optional: Set the desired transition animation.
          );
        },
        child: Column(
          children: [
            Hero(
              tag: heroTag, // Unique ID for the hero animation.
              child: Container(
                height: 130,
                width: Get.width * 0.28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/${image ?? ''}"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              name ?? '',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


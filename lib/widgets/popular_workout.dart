import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thunder_workout_app/all/Screens/exercise_screen.dart';

class PopularWorkout extends StatelessWidget {
  final List<Map<String, dynamic>> popular;

  const PopularWorkout({Key? key, required this.popular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      // padding: EdgeInsets.all(10),
      child: Row(
        children: popular.map((entry) => Popular(popular: entry)).toList(),
      ),
    );
  }
}

class Popular extends StatelessWidget {
  final Map<String, dynamic> popular;

  const Popular({Key? key, required this.popular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? images = popular['image'];
    final String? name = popular['name'];
    final String? id = popular['id'];
    // Create a unique tag for each Popular item using the id
// Use UniqueKey for the Hero tag to ensure uniqueness
    final heroTag = UniqueKey();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        onTap: () {
          Get.to(
            ExerciseScreen(imagePath: images, name: name ?? '', id: id),
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
                    image: AssetImage("assets/images/${images ?? ''}"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              name ?? '',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/second%20screen/ui/tabs/tab_bar_items/single%20_component.dart';

class AllType extends StatelessWidget {
  AllType({super.key, required this.containerBackColor});
  Color containerBackColor;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleComponent(noOfDays: "7 days", workoutName: "Morning Yoga", workoutDescription: "Improve mental focus.",imagePath: "assets/second_screen/removal2.png", containerBackColor: containerBackColor,),
        const SizedBox(height: 20,),
        SingleComponent(noOfDays: "3 days", workoutName: "Plank Exercise", workoutDescription: "Improve posture and stability.", imagePath: "assets/second_screen/plank.png", containerBackColor: containerBackColor,),
      ],
    );
  }
}

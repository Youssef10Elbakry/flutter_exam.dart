import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleComponent extends StatelessWidget {
  SingleComponent({super.key, required this.noOfDays, required this.workoutName, required this.workoutDescription, required this.imagePath, required this.containerBackColor});
  String noOfDays;
  String workoutName;
  String workoutDescription;
  Color containerBackColor;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color:containerBackColor,
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(noOfDays),
                ),
              ),
              SizedBox(height: 15,),
              Text(workoutName, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
              SizedBox(height: 10,),
              Text(workoutDescription, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.access_time_rounded),
                  Text("30 mins", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),)
                ],
              )
            ],
          ),
          Visibility(
               visible: workoutName == "Morning Yoga",
              child: const Spacer()
          ),
          workoutName == "Plank Exercise"?Expanded(child: Image(image: AssetImage(imagePath))): Image(image: AssetImage(imagePath)) ,
        ],
      ),
    );
  }
}

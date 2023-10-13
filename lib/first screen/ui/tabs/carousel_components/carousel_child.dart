import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselChild extends StatelessWidget {
  Color color;
  CarouselChild({super.key, this.color = Colors.green});


  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text("Positive Vibes", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                  SizedBox(height: 20,),
                  Text("Boost your mood with \n positive vibes", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.play_circle, color: Colors.green,),
                      SizedBox(width: 5,),
                      Text("10 min", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),),
                    ],
                  ),
                  Spacer()
                ],
              ),
              Spacer(),
              Center(child: Image(image: AssetImage("assets/Walking the Dog.png")))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../first_screen_provider.dart';

class CarouselIndicator extends StatelessWidget {
  CarouselIndicator({ required this.isInThisIndex});
  bool isInThisIndex;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 8.0,
      height: 8.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isInThisIndex
            ? Colors.blue
            : Colors.grey.withOpacity(0.5),
      ),
    );
  }
}

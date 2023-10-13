import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotTopics extends StatelessWidget {
  HotTopics({super.key, required this.imagePath});
  String imagePath;
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(imagePath));
  }
}

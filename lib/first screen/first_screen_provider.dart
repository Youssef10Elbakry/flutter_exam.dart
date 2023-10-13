import 'package:flutter/widgets.dart';

class FirstScreenProvider extends ChangeNotifier{
  static int currentNavIndex = 0;
  static int currentCarouselIndex = 0;

  void changeSelectedItem(int index){
    currentNavIndex = index;
    notifyListeners();
  }

  void changeSelectedSlider(int index){
    currentCarouselIndex = index;
    notifyListeners();
  }
}
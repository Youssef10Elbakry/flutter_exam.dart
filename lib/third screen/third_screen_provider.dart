import 'package:flutter/foundation.dart';

class ThirdScreenProvider extends ChangeNotifier{
  static int currentNavbarIndex = 1;
  static List<bool> isChipSelected = [false, false, false, false];


  void changeCurrentNavBarIndex(int index){
    currentNavbarIndex = index;
    notifyListeners();
  }

  void changeChipState(int index){
    isChipSelected[index] = !isChipSelected[index];
    notifyListeners();
  }
}
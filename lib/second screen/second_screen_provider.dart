import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreenProvider extends ChangeNotifier{

  static int selectedNavBarIndex = 0;
  static int selectedTabBarIndex = 0;
  static Color selectedTabColor = Colors.grey;

  void changeSelectedNavBarIndex(int index){
    selectedNavBarIndex = index;
    notifyListeners();
  }

  void changeSelectedTabIndex(int index){
    selectedTabBarIndex = index;
    notifyListeners();
  }
}
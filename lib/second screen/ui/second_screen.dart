import 'package:flutter/material.dart';
import 'package:flutter_exam/second%20screen/second_screen_provider.dart';
import 'package:flutter_exam/second%20screen/ui/tabs/fourth_tab.dart';
import 'package:flutter_exam/second%20screen/ui/tabs/home_tab.dart';
import 'package:flutter_exam/second%20screen/ui/tabs/second_tab.dart';
import 'package:flutter_exam/second%20screen/ui/tabs/third_tab.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  static String secondScreenRoute = "second screen";
  List<Widget> tabs = [HomeTab(), const SecondTab(), const ThirdTab(), const FourthTab()];
  late SecondScreenProvider provider2;
  @override
  Widget build(BuildContext context) {
    provider2 = Provider.of(context);
    return  Scaffold(
      body: tabs[SecondScreenProvider.selectedNavBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SecondScreenProvider.selectedNavBarIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.navigation_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        onTap: (int index){
          provider2.changeSelectedNavBarIndex(index);
        },
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
      )
    );
  }
}

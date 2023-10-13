import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/first%20screen/first_screen_provider.dart';
import 'package:flutter_exam/first%20screen/ui/tabs/fourth_tab.dart';
import 'package:flutter_exam/first%20screen/ui/tabs/home_tab.dart';
import 'package:flutter_exam/first%20screen/ui/tabs/second_tab.dart';
import 'package:flutter_exam/first%20screen/ui/tabs/third_tab.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});
  static String firstScreenRoute = "first screen";

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<Widget> tabs = [HomePage(), const SecondTab(), const ThirdTab(), const FourthTab()];
  late FirstScreenProvider provider1;

  @override
  Widget build(BuildContext context) {
    provider1 = Provider.of(context);
    return
      Scaffold(
        body: tabs[FirstScreenProvider.currentNavIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          currentIndex: FirstScreenProvider.currentNavIndex,
          onTap: (index){
            provider1.changeSelectedItem(index);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      );
  }
}

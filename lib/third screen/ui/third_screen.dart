import 'package:flutter/material.dart';
import 'package:flutter_exam/third%20screen/third_screen_provider.dart';
import 'package:flutter_exam/third%20screen/ui/tabs/chat_tab.dart';
import 'package:flutter_exam/third%20screen/ui/tabs/insights_tab.dart';
import 'package:flutter_exam/third%20screen/ui/tabs/today_tab.dart';
import 'package:provider/provider.dart';

class ThirdScreen extends StatelessWidget {
  static String thirdScreenRoute = "third screen";
  ThirdScreen({super.key});
  late ThirdScreenProvider provider3;
  List<Widget> tabs = [ChatTab(), InsightsTab(), TodayTab()];

  @override
  Widget build(BuildContext context) {
    provider3 = Provider.of(context);
    return Scaffold(
      body: tabs[ThirdScreenProvider.currentNavbarIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 25),
        child: BottomNavigationBar(
          iconSize: 30,
          elevation: 0,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          currentIndex: ThirdScreenProvider.currentNavbarIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: "Today"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_sharp), label: "Insights"),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_sharp), label: "Chat"),
          ],
          onTap: (int index){
            provider3.changeCurrentNavBarIndex(index);
          },
        ),
      ),
    );
  }
}
